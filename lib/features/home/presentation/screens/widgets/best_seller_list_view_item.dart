import 'package:bookup/core/core.dart';
import 'package:bookup/features/home/presentation/screens/widgets/book_rating_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.imageUrl, required this.title, required this.author, required this.price, required this.rating, required this.ratingCount});
 final String imageUrl ;
 final String title ;
 final String author ;
  final String price ;
  final String rating;
  final int ratingCount;
  
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
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.r8),
              child: AspectRatio(
                aspectRatio: AppSizes.aspectRatioBooksVertical,
                child: CachedNetworkImage(fit: BoxFit.fill, imageUrl: imageUrl),
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
                      title,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: AppConstants.kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: AppSizes.w3),
                  Text(author, style: Styles.textStyle14),
                  SizedBox(height: AppSizes.w3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                       price,
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(rating: rating, ratingCount: ratingCount,),
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
