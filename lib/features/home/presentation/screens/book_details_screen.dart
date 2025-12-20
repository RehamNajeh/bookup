import 'package:bookup/features/home/presentation/screens/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const BookDetailsBody()));
  }
}
