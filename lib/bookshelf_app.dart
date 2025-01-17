import 'package:book_shelf/pages/home/detailbook_page.dart';
import 'package:book_shelf/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:book_shelf/theme/theme.dart';

class BookShelfApp extends StatefulWidget {
  const BookShelfApp({super.key});

  @override
  State<BookShelfApp> createState() => _BookShelfAppState();
}

class _BookShelfAppState extends State<BookShelfApp> {
 // final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookShelf',
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/detail': (context) => const DetailBookPage(),
      }
      //routerConfig: _router.config(),

    );
  }
}