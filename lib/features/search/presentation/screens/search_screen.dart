import 'package:bookup/core/core.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: AppSizes.h50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: AppStrings.searchBooks,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.r10),
                ),
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
