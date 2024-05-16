import 'package:flutter/material.dart';
import '../../design/error_dialog.dart';
import '../../design/widgets/add_button.dart';

import 'package:auto_route/auto_route.dart';

import '../widgets/read_book_card.dart';

@RoutePage()
class isReadPage extends StatelessWidget {
  const isReadPage({super.key});
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: const Text('Прочитано'),
          centerTitle: true,
        ),
        body: Stack(children: <Widget>[_list(context), _addButton(context)]));
  }

  Widget _list(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) =>
      const Divider(color: Colors.white30),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child:  ReadBookCard(isRead: true, bookname: 'Унесенные ветром', bookautor: 'Маргарет Митчелл' ),
        );
      },
    );
  }

  Widget _addButton(BuildContext context) {
    return AddButton(
        title: 'Добавить книгу',
        onTap: () {
          _showErrorDialog(context);
        });
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const ErrorDialog(
            description: 'Попробуйте снова, произошла ошибка');
      },
    );
  }
}
