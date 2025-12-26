import 'package:bookup/core/core.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.r16),
      child: AspectRatio(
        aspectRatio: AppSizes.aspectRatioBooksHorizontal,
        child: CachedNetworkImage(fit: BoxFit.fill, imageUrl: imageUrl),
      ),
    );
  }
}
