import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final String namebook;
  final String autorbook;
  final int rating;
  final Image img;
  const CommentCard({
    super.key, required this.namebook, required this.autorbook, required this.rating, required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(namebook,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
                Text(autorbook,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,)),
                const SizedBox(height: 16),
                const SizedBox(
                  width: 200,
                  child: Text('Текст отзыва. Текст отзыва.Текст отзыва.Текст отзыва.Текст отзыва.Текст отзыва.Текст отзыва. ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(height: 5),

                Row(children: <Widget>[
                  for(int i = 0; i< rating; i++)
                    const Icon(Icons.star, color: Colors.amber, size: 35),
                ])
              ]),
          //const SizedBox(width: 15),
          img
        ],
      ),
    );
  }
}