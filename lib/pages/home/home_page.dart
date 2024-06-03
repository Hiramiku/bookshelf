import 'package:flutter/material.dart';
import '../../design/colors.dart';
import '../isRead_page/isRead_page.dart';
import '../profile_page/profile_page.dart';
import '../reading_page/reading_page.dart';
import 'cardItemspage.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController= PageController();
var _selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
          return Scaffold(
            body: PageView(
                controller: _pageController,
                onPageChanged: (value){
                  setState(() => _selectedPageIndex = value);
                },
                children: [
              CardItemsPage(),
              const ReadingPage(),
              const isReadPage(),
              const ProfilePage()

            ]),
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.grey,
              backgroundColor: backgroundColor,
              selectedItemColor: primaryColor,
              currentIndex: _selectedPageIndex,
              onTap: (index) => _openPage(index),
              items: const [
                BottomNavigationBarItem(

                  backgroundColor: backgroundColor,
                  label: 'Библиотека',
                  icon: Icon(Icons.library_books),

                ),
                BottomNavigationBarItem(

                  backgroundColor: backgroundColor,
                  label: 'Читаю сейчас',
                  icon: Icon(Icons.menu_book),

                ),
                BottomNavigationBarItem(

                  backgroundColor: backgroundColor,
                  label: 'Прочитано',
                  icon: Icon(Icons.check),

                ),
                BottomNavigationBarItem(

                  backgroundColor: backgroundColor,
                  label: 'Профиль',
                  icon: Icon(Icons.account_circle),

                ),

              ],
            ),




    );
  }
  void _openPage(int index){
      setState((){
        _selectedPageIndex = index;
        _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
      });
  }

}

