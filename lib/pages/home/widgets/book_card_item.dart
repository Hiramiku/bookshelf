import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../design/colors.dart';
import '../../../design/images.dart';
import '../../../repositories/book_items/book_items_repository.dart';
import '../../../router/router.dart';
import '../detailbook_page.dart';


class BookCardItem extends StatelessWidget {
  const BookCardItem({super.key, required this.bookname, required this.bookautor, required this.img, required this.annotation});
  final String bookname;
  final String bookautor;
  final String annotation;

  final Image img;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return  Container(
                padding: const EdgeInsets.symmetric( vertical: 10.0, horizontal: 8),
                height: 280,
                child: Card(
                  color: backlightColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      Navigator.of(context).pushNamed('/detail',
                      arguments: {
                        'bookname': bookname,
                        'bookautor': bookautor,
                        'annotation' : annotation,
                      'img': img});
                      //AutoRouter.of(context).push(DetailBookRoute());

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, bottom: 8, left: 8, right: 8),
                      child: Column(
                          textDirection: TextDirection.ltr,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(child: Container(width: 150, child: img)),
                            SizedBox(height: 10),
                            Text(bookname,
                                maxLines: 2, overflow: TextOverflow.ellipsis),
                            Text(bookautor,
                                style: theme.textTheme.labelSmall,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                          ]),
                    ),
                  ),
                ),


    );
  }
}
