import 'package:flutter/material.dart';
import '../../design/images.dart';

import 'package:auto_route/auto_route.dart';
@RoutePage()
class DetailBookPage extends StatefulWidget {
  const DetailBookPage({super.key});

  @override
  State<DetailBookPage> createState() => _DetailBookPageState();
}

class _DetailBookPageState extends State<DetailBookPage> {

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{'bookname': '...', 'bookautor': '...', 'img': '...'}) as Map<String, dynamic>;
    assert(arguments != null && arguments is Map,'Error' );
    bookname = arguments['bookname'] as String;
    bookautor = arguments['bookautor'] as String;
    //img = arguments['img'] as Image;

    }


  String? bookname;
  String? bookautor;
  var img;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            title: const Text('О книге'),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            textDirection: TextDirection.ltr,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                                bookname ?? '...',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                            Text(bookautor  ?? '...',
                                style: const TextStyle(
                                    color: Colors.white70, fontSize: 20),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                          ]),
                    ),
                    const SizedBox(width: 15),
                    SizedBox(height: 180, child: img ?? profilePic)
                  ]),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'sdgkdsfhnjsdgsndljkgnls knsnkdagkslda fkdsa fjkdsjkf skladf kjdskafj kalsdfjk sakdf kjsdla fjklsaj jfskdjfglskdgfkj sjklfjdlkfjkl dsjfksdkfj kldsfksdklfjdsklfjksdljf kjdkfjd  ',
                  style: TextStyle(fontSize: 16.0),
                  textDirection: TextDirection.ltr,),
            ],
          ),
        ));
  }

}