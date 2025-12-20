import 'package:bookup/core/core.dart';
import 'package:bookup/features/home/presentation/screens/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.w20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchField(),
              SizedBox(height: AppSizes.h20),
              Text(
                AppStrings.searchResults,
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: AppSizes.h10),
              Expanded(child: const SearchResultsListView()),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => const BestSellerListViewItem(),
      separatorBuilder: (context, index) => SizedBox(height: AppSizes.w10),
      itemCount: 10,
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
        decoration: InputDecoration(
          hintText: AppStrings.searchBooks,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.r10),
          ),
          suffixIcon: const Icon(Icons.search),
        ),
      
    );
  }
}
