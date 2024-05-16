import 'package:flutter/material.dart';

import '../colors.dart';

class AccentButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const AccentButton({super.key, required this.onTap, required this.title});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(140,40),
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Text(title,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600)),

    );
  }
}
