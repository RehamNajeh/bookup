import 'package:bookup/core/core.dart';
import 'package:bookup/features/home/presentation/screens/widgets/book_details_app_bar.dart';
import 'package:bookup/features/home/presentation/screens/widgets/book_rating_widget.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_button.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:bookup/features/home/presentation/screens/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w30),
            child: Column(
              crossAxisAlignment: .center,
              children: [
                const BookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * AppSizes.f015,
                  ),
                  child: const CustomListViewItem(),
                ),
                SizedBox(height: AppSizes.w20),
                Text(
                  AppStrings.theJungleBook,
                  style: Styles.textStyle30.copyWith(
                    fontFamily: AppConstants.kGtSectraFine,
                  ),
                ),
                SizedBox(height: AppSizes.w3),
                Text(
                  AppStrings.rudyardKipling,
                  style: Styles.textStyle18.copyWith(
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: AppSizes.w16 + 2),
                BookRating(mainAxisAlignment: MainAxisAlignment.center),
                SizedBox(height: AppSizes.w16 + 21),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        textColor: Colors.black,
                        text: AppStrings.bookPrice,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppSizes.r16),
                          bottomLeft: Radius.circular(AppSizes.r16),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        textColor: Colors.white,
                        text: AppStrings.freePreview,
                        backgroundColor: Color.fromARGB(255, 230, 174, 54),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppSizes.r16),
                          bottomRight: Radius.circular(AppSizes.r16),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(child: SizedBox(height: 20)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.youCanAlsoLike,
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.w16),
                SimilerBooksListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
