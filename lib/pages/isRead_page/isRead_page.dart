import 'package:flutter/material.dart';
import '../../design/error_dialog.dart';
import '../../design/widgets/add_button.dart';

import 'package:auto_route/auto_route.dart';

import '../widgets/read_book_card.dart';

@RoutePage()
class isReadPage extends StatefulWidget {
  const isReadPage({super.key});

  @override
  State<isReadPage> createState() => _isReadPageState();
}

class _isReadPageState extends State<isReadPage> {
  final _titleController = TextEditingController();
  final _authorController = TextEditingController();
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
          child: const ReadBookCard(
              isRead: true,
              bookname: 'Название', bookautor: 'Автор'),
        );
      },
    );
  }

  Widget _addButton(BuildContext context) {
    return AddButton(
        title: 'Добавить книгу',
        onTap: () {
          _showForm(context);
        });
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const ErrorDialog(
            description: 'Извините, данная функция еще в разработке.');
      },
    );
  }

  _showForm(BuildContext context) {
    _titleController.text = "";
    _authorController.text = "";

    showBottomSheet(
        elevation: 5,
        context: context,
        builder: (_) => Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(child: StatefulBuilder(
                  // Wrap with StatefulBuilder
                  builder: (BuildContext context, StateSetter setStateModal) {
                // Note the setStateModal for local updates
                return Form(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Text('Добавить книгу:',
                            style: TextStyle(color: Colors.black87)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    //Title input field
                    child: TextFormField(
                      controller: _titleController,
                      decoration: const InputDecoration(hintText: "название"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    //Author input field
                    child: TextFormField(
                      controller: _authorController,
                      decoration: const InputDecoration(hintText: "автор"),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 60),
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            elevation: 5,
                          ),
                          child: Text(
                            "Выход",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 20,
                            ),
                          )),

                      //Create button
                      ElevatedButton(
                        onPressed: () {
                          _showErrorDialog(context);

                          setState(() {
                            _titleController.text = "";
                            _authorController.text = "";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 60),
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          elevation: 5,
                        ),
                        child: Text(
                          "Сохранить",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                ]));
              })),
            ));
  }
}
