import 'package:bookup/core/core.dart';
import 'package:bookup/features/home/data/models/book_model.dart';
import 'package:bookup/features/home/presentation/screens/widgets/best_seller_list_view_item.dart';
import 'package:bookup/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              SearchField(
                onSubmitted: (query) =>
                    context.read<SearchCubit>().search(query),
              ),
              SizedBox(height: AppSizes.h20),
              Text(
                AppStrings.searchResults,
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: AppSizes.h10),
              Expanded(
                child: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                    if (state is SearchLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is SearchFailure) {
                      return Center(child: Text(state.message));
                    } else if (state is SearchSuccess) {
                      if (state.books.isEmpty) {
                        return Center(
                          child: Text(
                            'No books found. Try another keyword.',
                            style: Styles.textStyle14,
                          ),
                        );
                      }
                      return SearchResultsListView(books: state.books);
                    }
                    return Center(
                      child: Text(
                        'Search for any book title or author.',
                        style: Styles.textStyle14,
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class SearchField extends StatelessWidget {
  const SearchField({super.key, required this.onSubmitted});

  final ValueChanged<String> onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      textInputAction: TextInputAction.search,
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

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key, required this.books});

  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => BestSellerListViewItem(
        bookModel: books[index],
      ),
      separatorBuilder: (context, index) => SizedBox(height: AppSizes.w10),
      itemCount: books.length,
    );
  }
}
