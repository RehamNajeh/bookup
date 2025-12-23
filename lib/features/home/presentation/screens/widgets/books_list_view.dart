import 'package:bookup/core/core.dart';
import 'package:bookup/core/widgets/custom_error_widget.dart';
import 'package:bookup/features/home/presentation/manager/features_books_cubit/featured_books_cubit.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: AppSizes.h180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  context.push(
                    AppRouter.bookDetailsScreen,
                    extra: state.featuredBooks[index],
                  );
                },
                child: CustomListViewItem(
                  imageUrl:
                      state
                          .featuredBooks[index]
                          .volumeInfo
                          .imageLinks
                          .thumbnail ??
                      '',
                ),
              ),
              separatorBuilder: (context, index) =>
                  SizedBox(width: AppSizes.w16),
              itemCount: state.featuredBooks.length,
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        }
      },
    );
  }
}
