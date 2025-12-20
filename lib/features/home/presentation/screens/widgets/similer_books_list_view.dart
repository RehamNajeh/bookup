import 'package:bookup/core/core.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * AppSizes.f015,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(),
        itemCount: 10,
      ),
    );
  }
}
