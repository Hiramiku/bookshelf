import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../design/images.dart';
import '../../design/widgets/accent_button.dart';
import 'comment_card.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
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
                              Text('Ник',
                                  maxLines: 2, overflow: TextOverflow.ellipsis),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'О себе: ',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              Text(
                                  'djkfdsdfsdfdsfsdfdsfdsfla fjklsaj jfskdjfglskdgfkj sjklfjdlkfjkl dsjfksdkfj kldsfksdklfjdsklfjksdljf kjdkfjd  ',
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
                    Text('Отзывы:', style: TextStyle(color: Colors.white)),
                    AccentButton(
                      onTap: () {},
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
}


