part of 'similer_books_cubit.dart';

sealed class SimilerBooksState extends Equatable {
  const SimilerBooksState();

  @override
  List<Object> get props => [];
}

final class SimilerBooksCubitInitial extends SimilerBooksState {}
final class SimilerBooksCubitLoading extends SimilerBooksState {}
final class SimilerBooksCubitFailure extends SimilerBooksState {
  final String errorMessage;
  const SimilerBooksCubitFailure(this.errorMessage); 
}
final class SimilerBooksCubitSuccess extends SimilerBooksState {
  final List<BookModel> similerBooks;
  const SimilerBooksCubitSuccess(this.similerBooks);
  
}
