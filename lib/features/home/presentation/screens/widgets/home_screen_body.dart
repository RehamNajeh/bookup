import 'package:bookup/core/core.dart';
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
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const BooksListView(),
                SizedBox(height: AppSizes.w30),
                Text(
                  AppStrings.bestSellers,
                  style: Styles.textStyle18.copyWith(
                    fontFamily: AppConstants.kGtSectraFine,
                  ),
                ),
                SizedBox(height: AppSizes.w20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w30),
            child: const BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
