import 'package:flutter/material.dart';

class AnimatedCounter extends StatefulWidget {
  final num value;
  final Duration duration;

  const AnimatedCounter({super.key, 
    required this.value,
    required this.duration,
  });

  @override
  AnimatedCounterState createState() => AnimatedCounterState();
}

class AnimatedCounterState extends State<AnimatedCounter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<num> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = Tween<num>(
      begin: 0,
      end: widget.value,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.value is int
          ? _animation.value.toInt().toString()
          : _animation.value.toStringAsFixed(1),
      style: const TextStyle(fontSize: 28),
    );
  }
}
