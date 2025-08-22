import 'package:flutter/material.dart';

class AnimatedEnrollButton extends StatefulWidget {
  const AnimatedEnrollButton({Key? key}) : super(key: key);

  @override
  _AnimatedEnrollButtonState createState() => _AnimatedEnrollButtonState();
}

class _AnimatedEnrollButtonState extends State<AnimatedEnrollButton> {
  double _scale = 1.0;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _onTapDown(context),
      onTapUp: (_) => _onTapUp(context),
      onTapCancel: () => _onTapUp(context),
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 200),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            // Add your enroll logic here
            print('Enrolling in course...');
          },
          child: const Text('Enroll Now'),
        ),
      ),
    );
  }

  void _onTapDown(BuildContext context) {
    setState(() {
      _scale = 0.95; // Slightly smaller when pressed
      _isPressed = true;
    });
  }

  void _onTapUp(BuildContext context) {
    setState(() {
      _scale = 1.0; // Return to normal size
      _isPressed = false;
    });
  }
}


