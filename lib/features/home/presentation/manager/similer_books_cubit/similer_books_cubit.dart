import 'package:bookup/features/home/data/models/book_model.dart';
import 'package:bookup/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  final HomeRepo homeRepo;
  SimilerBooksCubit({required this.homeRepo}) : super(SimilerBooksCubitInitial());
  Future<void>fetchSimilerBooks({required String category})async{
    emit(SimilerBooksCubitLoading());
   var result =await homeRepo.fetchSimilerBooks(category: category);
   result.fold(
    (failure) {
      emit(SimilerBooksCubitFailure(failure.errorMessage));
    }, 
    (similerBooks) {
      emit(SimilerBooksCubitSuccess(similerBooks));
    }
   );
  }
}