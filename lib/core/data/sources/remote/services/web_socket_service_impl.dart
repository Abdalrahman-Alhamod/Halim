import 'dart:async';
import 'dart:typed_data';

import '../../../../utils/logger.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

import 'web_socket_service.dart';

class WebSocketServicesImpl implements WebSocketServices {
  WebSocketChannel? _channel;
  final List<Function(dynamic)> _messageListeners = [];
  StreamSubscription? _subscription;
  final StreamController<dynamic> _errorController =
      StreamController<dynamic>();
  final StreamController<void> _doneController = StreamController<void>();
  String? _url;
  int _reconnectAttempts = 0;

  @override
  Future<void> connect(String url) async {
    try {
      _url = url;
      logger.print(
        'Connecting to channel $url',
        color: PrintColor.grey,
        title: PrintTitles.websocketServices,
      );
      _channel = WebSocketChannel.connect(Uri.parse(url));
      logger.print(
        'Channel Connected $url',
        color: PrintColor.grey,
        title: PrintTitles.websocketServices,
      );
      // Listen to the stream for incoming messages
      _subscription = _channel!.stream.listen(
        (message) {
          logger.print(
            'Recieved Message $message',
            color: PrintColor.grey,
            title: PrintTitles.websocketServices,
          );
          _notifyListeners(message);
        },
        onError: (error) {
          logger.print(
            'Error $error',
            color: PrintColor.grey,
            title: PrintTitles.websocketServices,
          );
          _errorController.add(error);
          _attemptReconnection(url);
        },
        onDone: () {
          logger.print(
            'Connection Closed',
            color: PrintColor.grey,
            title: PrintTitles.websocketServices,
          );
          _doneController.add(null);
          _attemptReconnection(url);
        },
      );
    } catch (e) {
      logger.print(
        'Connecting Error $e',
        color: PrintColor.grey,
        title: PrintTitles.websocketServices,
      );
      _errorController.add(e);
      rethrow;
    }
  }

  // Method to notify all registered listeners
  void _notifyListeners(dynamic message) {
    for (var listener in _messageListeners) {
      listener(message);
    }
  }

  Future<void> _attemptReconnection(String url) async {
    if (_reconnectAttempts < 5) {
      // Set a maximum reconnection attempts limit
      _reconnectAttempts++;
      final delay =
          Duration(seconds: 2 * _reconnectAttempts); // Exponential backoff
      logger.print(
        'Reconnecting in $delay...',
        color: PrintColor.orange,
        title: PrintTitles.websocketServices,
      );
      await Future.delayed(delay);
      await connect(url);
    } else {
      logger.print(
        'Failed to reconnect after $_reconnectAttempts attempts.',
        color: PrintColor.red,
        title: PrintTitles.websocketServices,
      );
    }
  }

  @override
  Future<void> disconnect() async {
    await _subscription?.cancel();
    await _channel?.sink.close(status.normalClosure);
    _messageListeners.clear();
    _channel = null;
  }

  @override
  Future<void> reconnect() async {
    if (_url == null) return; // Ensure there is a URL to reconnect to

    await disconnect();
    await connect(_url!);
  }

  @override
  Stream<dynamic> listen() {
    if (_channel == null) {
      throw Exception('WebSocket is not connected');
    }
    return _channel!.stream;
  }

  @override
  Future<void> sendMessage(String message) async {
    if (_channel == null) {
      throw Exception('WebSocket is not connected');
    }
    logger.print(
      'Sending message $message',
      color: PrintColor.grey,
      title: PrintTitles.websocketServices,
    );
    _channel!.sink.add(message);
  }

  @override
  Future<void> sendBinary(Uint8List data) async {
    if (_channel == null) {
      throw Exception('WebSocket is not connected');
    }
    _channel!.sink.add(data);
  }

  @override
  bool isConnected() {
    return _channel != null;
  }

  @override
  Stream<dynamic> onError() {
    return _errorController.stream;
  }

  @override
  Stream<void> onDone() {
    return _doneController.stream;
  }

  @override
  void addMessageListener(Function(dynamic) onMessage) {
    _messageListeners.add(onMessage);
  }

  @override
  void removeMessageListener(Function(dynamic) onMessage) {
    _messageListeners.remove(onMessage);
  }
}
