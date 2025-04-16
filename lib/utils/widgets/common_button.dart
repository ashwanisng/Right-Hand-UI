import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonName;
  final Color buttonBackgroundColor;
  final TextStyle buttonTextStyle;

  const CommonButton({
    super.key,
    required this.onTap,
    required this.buttonName,
    required this.buttonBackgroundColor,
    required this.buttonTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: buttonBackgroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(buttonName, style: buttonTextStyle),
      ),
    );
  }
}
