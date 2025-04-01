import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle style;
  final String? imagePath; // Optional image path

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.style,
    this.imagePath, // Allow passing an image
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imagePath != null) ...[
                Image.asset(
                  imagePath!,
                  height: 24,
                  width: 24,
                ),
                const SizedBox(width: 10), // Space between image and text
              ],
              Text(
                text,
                style: style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
