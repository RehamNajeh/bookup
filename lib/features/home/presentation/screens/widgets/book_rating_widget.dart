import 'package:bookup/core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: AppSizes.sp14,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: AppSizes.w6),
        Text(AppStrings.rating, style: Styles.textStyle16),
        SizedBox(width: AppSizes.w6),
        Text(AppStrings.ratingCount, style: Styles.textStyle14),
      ],
    );
  }
}
