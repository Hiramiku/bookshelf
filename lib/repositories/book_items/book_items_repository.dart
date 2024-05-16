import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../models/book_item.dart';
class BookItemsRepository {
  /*
  Future<List<BookItem>> getBookList() async {
    final response = await Dio().get(
      'https://openlibrary.org/search.json?q=crime+and+punishment&fields=key,title,author_name,editions'

    );
    final data = response.data as Map<String, dynamic>;
    final BookItemsList = data.entries.map((e)=>
        BookItem(
      name: e.key,
      autor: e.value, //(e.value as Map<String, dynamic>)['author_name'],
    )).toList();
    return ;
    //return BookItemsList;
    //debugPrint(response.toString());


  }

   */
 }