import 'package:flutter/material.dart';

@immutable
class Book{
  const Book({
    required this.title,
    required this.author,
    required this.description,
    required this.genre,
  });

  final String title;
  final String author;
  final String description;
  final String genre;

  Book.fromJson(Map<String, Object?> json)
      : this(
    title: json['title']! as String,
    author: json['author']! as String,
    description: json['description']! as String,
    genre: json['genre']! as String,
  );

  Map<String, Object?> toJson() {
    return {
      'title': title,
      'author': author,
      'description': description,
      'genre': genre,
    };
  }

  Book copyWith({String? title, String? author, String? description, String? genre}) {
    return Book(
      title: title?? this.title,
      author: author?? this.author,
      description: description?? this.description,
      genre: author?? this.genre,
    );
  }
}