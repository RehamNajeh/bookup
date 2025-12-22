import 'package:bookup/core/errors/failure.dart';
import 'package:bookup/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellersBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
    Future<Either<Failure, List<BookModel>>> fetchSimilerBooks({required String category});

}
