import 'package:bookup/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.bookPlaceholder),
          fit: BoxFit.cover,
        ),

        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
