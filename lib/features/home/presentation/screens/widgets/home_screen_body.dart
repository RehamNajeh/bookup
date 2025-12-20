import 'package:bookup/core/constants/app_constants.dart';
import 'package:bookup/core/utils/styles.dart';
import 'package:bookup/features/home/presentation/screens/widgets/best_seller_list_view.dart';
import 'package:bookup/features/home/presentation/screens/widgets/books_list_view.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const BooksListView(),
                Text(
                  "Best Sellers",
                  style: Styles.textStyle18.copyWith(
                    fontFamily: AppConstants.kGtSectraFine,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: const BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
