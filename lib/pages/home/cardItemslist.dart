import 'package:auto_route/auto_route.dart';
import 'package:book_shelf/pages/home/widgets/book_card_item.dart';
import 'package:flutter/material.dart';
import '../../design/colors.dart';
import '../../design/images.dart';
import '../../repositories/book_items/book_items_repository.dart';
@RoutePage()
class CardItemsPage extends StatelessWidget {
  const CardItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _controllerSearch = TextEditingController();

    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Text('BookShelf'),
          snap: true,
          floating: true,
          pinned: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: backlightColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: _controllerSearch,
                style: const TextStyle(color: Colors.white70, fontSize: 18),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Найти книгу',
                  hintStyle: const TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: _controllerSearch.clear),
                  prefixIconColor: Colors.white70,
                  suffixIconColor: Colors.white70,
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
    SliverGrid(
    delegate: SliverChildBuilderDelegate(
    (context, index) =>
        BookCardItem(
          bookname: 'Унесенные ветром',
          bookautor: 'Маргарет Митчелл',
          img: unesVetrom, ),
    childCount: 10),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, mainAxisExtent: 440),



      ),
    ]
      //floatingActionButton: FloatingActionButton(onPressed: () { BookItemsRepository().getBookList(); }, child: Icon(Icons.add, color: Colors.white),),
      ),
    );
  }
}
