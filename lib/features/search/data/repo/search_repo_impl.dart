import 'package:bookup/core/errors/failure.dart';
import 'package:bookup/core/utils/api_service.dart';
import 'package:bookup/features/home/data/models/book_model.dart';
import 'package:bookup/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
    final ApiService apiService;
  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> searchBooks({required String query})async {
    if (query.isEmpty){
      return Future.value(right([]));
    }
    try {
  final data =await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&q=$query');
  List<BookModel> books = [];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return right(books);
}  catch (e) {
  if (e is DioException) {
    return Left(ServerFailure.fromDioError(e));
  }
  return Left(ServerFailure(e.toString()));}

  }
}