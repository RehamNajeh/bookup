import 'package:bookup/features/home/data/models/book_model.dart';
import 'package:bookup/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookup/features/home/presentation/screens/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}
 
class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<SimilerBooksCubit>(context).fetchSimilerBooks(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailsBody(bookModel: widget.bookModel)));
  }
}
