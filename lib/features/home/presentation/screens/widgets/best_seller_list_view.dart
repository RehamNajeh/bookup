import 'package:bookup/core/core.dart';
import 'package:bookup/features/home/presentation/screens/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => const BestSellerListViewItem(),
      separatorBuilder: (context, index) => SizedBox(height: AppSizes.w10),
      itemCount: 10,
    );
  }
}
