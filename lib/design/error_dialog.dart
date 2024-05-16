import 'package:book_shelf/design/widgets/accent_button.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class ErrorDialog extends StatelessWidget {
  final String description;

  const ErrorDialog({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            Text('Ошибка', style: theme.textTheme.bodyMedium),
            const SizedBox(height: 10),
            Text(description,
                style: const TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(height: 20),
            Center(
              child: AccentButton(
                  title: 'ОК',
                  onTap: () {
                    Navigator.pop(context);
                  }),
            )
          ]),
        ));
  }
}
