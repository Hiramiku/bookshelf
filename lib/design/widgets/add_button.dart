import 'package:flutter/material.dart';

import '../colors.dart';

class AddButton extends StatelessWidget{
  final String title;
  final Function() onTap;
  const AddButton({super.key, required this.onTap, required this.title});
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FloatingActionButton.extended(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: onTap,
          label: Text(title, style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600
                )),
            icon: const Icon(Icons.add, color: Colors.white),
              ),
        )
    );
  }

}