import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoadingIndicator extends StatefulWidget {
  const CustomLoadingIndicator({
    super.key,
    this.color = Colors.white,
    this.size = 50.0,
    this.onComplete,
    this.durationInSeconds = 2,
  });

  final Color color;
  final double size;
  final VoidCallback? onComplete;
  final int durationInSeconds;
  @override
  _CustomLoadingIndicatorState createState() => _CustomLoadingIndicatorState();
}

class _CustomLoadingIndicatorState extends State<CustomLoadingIndicator> {
  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() {
    Future.delayed(
      Duration(seconds: widget.durationInSeconds),
      () {
        if (widget.onComplete != null) {
          widget.onComplete!();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitCircle(
        color: widget.color,
        size: widget.size,
      ),
    );
  }
}
