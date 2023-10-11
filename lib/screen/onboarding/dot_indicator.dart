import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 20,
      height: 20,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isActive ? 19 : 10,
            height: isActive ? 19 : 10,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: const Color(0x80FFFFFF),
                    width: 2
                )
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isActive ? 10 : 7,
            height: isActive ? 10 : 7,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}