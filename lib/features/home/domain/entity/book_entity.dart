import 'package:equatable/equatable.dart';

class BookEntity extends Equatable {
  final String? bookId;
  final String title;
  final String author;
  final String description;
  final String genre;
  final String language;
  final String? bookCover;
  final String? date;
  final String? formattedCreatedAt;
  final bool? isBookmarked;
  final Map<String, dynamic>? user;

  const BookEntity({
    this.bookId,
    required this.title,
    required this.author,
    required this.description,
    required this.genre,
    required this.language,
    this.bookCover,
    this.date,
    this.formattedCreatedAt,
    this.isBookmarked,
    this.user,
  });

  factory BookEntity.fromJson(Map<String, dynamic> json) => BookEntity(
        bookId: json["bookId"],
        title: json["title"],
        author: json["author"],
        description: json["description"],
        genre: json["genre"],
        language: json["language"],
        bookCover: json["bookCover"],
        date: json["date"],
        formattedCreatedAt: json["formattedCreatedAt"],
        isBookmarked: json["isBookmarked"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "bookId": bookId,
        "title": title,
        "author": author,
        "description": description,
        "genre": genre,
        "language": language,
        "bookCover": bookCover,
        "date": date,
        "formattedCreatedAt": formattedCreatedAt,
        "isBookmarked": isBookmarked,
        "user": user,
      };

  @override
  List<Object?> get props => [
        bookId,
        title,
        author,
        description,
        genre,
        language,
        bookCover,
        date,
        formattedCreatedAt,
        isBookmarked,
        user,
      ];
}
