import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A2B88),
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/login');
          },
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildBrandLogo(isLight: false),
                const SizedBox(height: 16),
                Text(
                  'Plan with purpose. Understand your time.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.8),
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _buildBrandLogo({required bool isLight}) {
    final textColor = isLight ? const Color(0xFF1A2B88) : Colors.white;
    final dotColor = isLight ? const Color(0xFF3866F2) : const Color(0xFF5B82F6);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            5,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              width: index == 2 ? 6 : 4,
              height: index == 2 ? 6 : 4,
              decoration: BoxDecoration(
                color: dotColor.withOpacity((index + 1) * 0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'intent',
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: textColor,
            letterSpacing: -1.0,
          ),
        ),
      ],
    );
  }
}