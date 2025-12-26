import 'package:bookup/features/home/data/models/book_model.dart';
import 'package:bookup/features/home/data/repos/home_repo.dart';
import 'package:bookup/features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> search(String query) async {
    final normalizedQuery = query.trim();
    if (normalizedQuery.isEmpty) {
      emit(SearchInitial());
      return;
    }
    emit(SearchLoading());
    final result = await searchRepo.searchBooks(query: normalizedQuery);
    result.fold(
      (failure) => emit(SearchFailure(failure.errorMessage)),
      (books) => emit(SearchSuccess(books)),
    );
  }
}
