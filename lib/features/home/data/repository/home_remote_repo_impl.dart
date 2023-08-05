import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/failure/failure.dart';
import '../../domain/entity/book_entity.dart';
import '../../domain/repository/home_repository.dart';
import '../data_source/home_remote_data_source.dart';

final homeRemoteRepoProvider = Provider<IHomeRepository>(
  (ref) => HomeRemoteRepositoryImpl(
    homeRemoteDataSource: ref.read(homeRemoteDataSourceProvider),
  ),
);

class HomeRemoteRepositoryImpl implements IHomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRemoteRepositoryImpl({required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, bool>> addBook(BookEntity book) {
    return homeRemoteDataSource.addBook(book);
  }

  @override
  Future<Either<Failure, bool>> deleteBook(String bookId) {
    return homeRemoteDataSource.deleteBook(bookId);
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getAllBooks() {
    return homeRemoteDataSource.getAllBooks();
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getBookById(String bookId) {
    return homeRemoteDataSource.getBookById(bookId);
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getBookmarkedBooks() {
    return homeRemoteDataSource.getBookmarkedBooks();
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getUserBooks() {
    return homeRemoteDataSource.getUserBooks();
  }

  @override
  Future<Either<Failure, bool>> bookmarkBook(String bookId) {
    return homeRemoteDataSource.bookmarkBook(bookId);
  }

  @override
  Future<Either<Failure, bool>> unbookmarkBook(String bookId) {
    return homeRemoteDataSource.unbookmarkBook(bookId);
  }

  @override
  Future<Either<Failure, String>> uploadBookCover(File file) {
    return homeRemoteDataSource.uploadBookCover(file);
  }

  @override
  Future<Either<Failure, bool>> updateBook(BookEntity book, String bookId) {
    return homeRemoteDataSource.updateBook(book, bookId);
  }
}
