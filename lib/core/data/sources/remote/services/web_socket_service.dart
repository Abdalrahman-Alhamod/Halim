import 'dart:typed_data';

abstract class WebSocketServices {
  Future<void> connect(String url);
  Future<void> disconnect();
  Future<void> reconnect(); 
  Stream<dynamic> listen();
  Future<void> sendMessage(String message);
  Future<void> sendBinary(Uint8List data); 
  bool isConnected();  
  Stream<dynamic> onError();  
  Stream<void> onDone();
  void addMessageListener(Function(dynamic) onMessage); 
  void removeMessageListener(Function(dynamic) onMessage); 
}
