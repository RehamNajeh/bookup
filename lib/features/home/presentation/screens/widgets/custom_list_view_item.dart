import 'package:bookup/core/core.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppSizes.aspectRatioBooksHorizontal,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bookPlaceholder),
            fit: BoxFit.cover,
          ),

          borderRadius: BorderRadius.circular(AppSizes.r8),
        ),
      ),
    );
  }
}
