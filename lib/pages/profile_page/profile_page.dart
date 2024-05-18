import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../design/error_dialog.dart';
import '../../design/images.dart';
import '../../design/widgets/accent_button.dart';
import 'comment_card.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Профиль'),
            centerTitle: true,
                ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              textDirection: TextDirection.ltr,
              children: <Widget>[
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Имя пользователя',
                                  maxLines: 2, overflow: TextOverflow.ellipsis),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'О себе: ',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              Text(
                                  'Описание профиля.',
                                  style: TextStyle(fontSize: 16.0),
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  textDirection: TextDirection.ltr),
                            ]),
                      ),
                      const SizedBox(width: 15),
                      SizedBox(
                          height: 180,
                          child: SizedBox(width: 180, child: profilePic))
                    ]),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Отзывы:', style: TextStyle(color: Colors.white)),
                    AccentButton(
                      onTap: () {_showErrorDialog(context);},
                      title: 'Написать отзыв',
                    ),
                  ],
                ),
                
                  CommentCard(namebook: 'Унесенные ветром', autorbook: 'Маргарет Митчелл', rating: 5, img: unesVetrom,),
                  CommentCard(namebook: 'Властелин колец', autorbook: 'Дж. Р. Р. Толкин', rating: 4, img: vlastelinKolets,),
                  CommentCard(namebook: 'Книжный вор', autorbook: 'Маркус Зусак', rating: 5, img: knijVor,),
          
                
                
                 const SizedBox(height: 10),
              ],
            ),
          ),
        ));
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
}


