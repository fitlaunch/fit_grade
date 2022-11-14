import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WiggleText extends HookWidget {
  const WiggleText(
      {required this.shakeOffset,
      required this.text,
      required this.shakeCount,
      super.key});

  final String text;
  final double shakeCount;
  final int shakeOffset;

  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: const Duration(seconds: 10))
          ..animateTo(1.0, curve: Curves.bounceInOut); // start the animation
    return AnimatedBuilder(
      animation: controller,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 22,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlue[900],
        ),
      ),
      builder: (context, child) {
        final sineValue = sin(shakeCount * 2 * pi * controller.value);
        return Transform.translate(
          offset: Offset(sineValue * shakeOffset, 0),
          child: child,
        );
      },
    );
  }
}
