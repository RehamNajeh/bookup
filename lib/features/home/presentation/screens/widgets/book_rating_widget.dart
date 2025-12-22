import 'package:bookup/core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.ratingCount,
  });
  final String rating;
  final int ratingCount;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: AppSizes.sp14,
          color: AppColors.starYellow,
        ),
        SizedBox(width: AppSizes.w6),
        Text(rating, style: Styles.textStyle16),
        SizedBox(width: AppSizes.w6),
        Text('(${ratingCount.toString()})', style: Styles.textStyle14),
      ],
    );
  }
}
