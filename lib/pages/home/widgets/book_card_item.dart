import 'package:flutter/material.dart';
import '../../../design/colors.dart';
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
                height: 270,
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
                            Center(child: SizedBox(width: 150, child: img)),
                            const SizedBox(height: 10),
                            Text(bookname, style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                                maxLines: 2, overflow: TextOverflow.ellipsis),
                            Text(bookautor,
                                style: const TextStyle(color: Colors.white54, fontSize: 16),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                          ]),
                    ),
                  ),
                ),

    );
  }
}
