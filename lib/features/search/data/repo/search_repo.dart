import 'package:bookup/core/errors/failure.dart';
import 'package:bookup/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> searchBooks({required String query});
}