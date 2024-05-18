import 'package:flutter/material.dart';

class ReadBookCard extends StatelessWidget {
  const ReadBookCard({super.key, this.isRead = false, required this.bookname, required this.bookautor});
  final bool isRead;
  final String bookname;
  final String bookautor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(bookname,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20)),
      subtitle: Text(bookautor,
          style: const TextStyle(color: Colors.white54, fontSize: 16)),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.check_circle),
          color: isRead ?  Colors.green: Colors.white
      ),
    );
  }
}