import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:swapreads/features/home/domain/entity/book_entity.dart';

Future<List<BookEntity>> getBookListTest() async {
  final response = await rootBundle.loadString('test_data/book_test_data.json');
  final jsonList = await json.decode(response);
  final List<BookEntity> bookList = jsonList
      .map<BookEntity>(
        (json) => BookEntity.fromJson(json),
      )
      .toList();

  return Future.value(bookList);
}
