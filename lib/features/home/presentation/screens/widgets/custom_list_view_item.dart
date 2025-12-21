import 'package:bookup/core/core.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});
 final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppSizes.aspectRatioBooksHorizontal,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),

          borderRadius: BorderRadius.circular(AppSizes.r8),
        ),
      ),
    );
  }
}
