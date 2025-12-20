import 'package:bookup/core/core.dart';
import 'package:bookup/features/home/presentation/screens/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.bookDetailsScreen);
      },
      child: SizedBox(
        height: AppSizes.h126,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: AppSizes.aspectRatioBooksVertical,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.bookPlaceholder),
                    fit: BoxFit.cover,
                  ),

                  borderRadius: BorderRadius.circular(AppSizes.r8),
                ),
              ),
            ),
            SizedBox(width: AppSizes.w10),
            Expanded(
              child: Column(
                mainAxisAlignment: .start,
                crossAxisAlignment: .start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * AppSizes.f05,
                    child: Text(
                      AppStrings.theAlchemist,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: AppConstants.kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: AppSizes.w3),
                  Text(AppStrings.byPauloCoelho, style: Styles.textStyle14),
                  SizedBox(height: AppSizes.w3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.itemPrice,
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
