import 'package:bookup/core/core.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(),
        itemCount: 10,
      ),
    );
  }
}
