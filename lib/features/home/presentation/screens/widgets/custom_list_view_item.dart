import 'package:bookup/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bookPlaceholder),
            fit: BoxFit.cover,
          ),

          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
