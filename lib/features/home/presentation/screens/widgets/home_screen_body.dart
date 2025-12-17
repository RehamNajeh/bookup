import 'package:bookup/core/constants/app_assets.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const CustomAppBar(),
      
      const SizedBox(height: 20,),
      SizedBox(
        height: 180,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomListViewItem(),
          separatorBuilder: (context, index) => const SizedBox(width: 12,),
          itemCount: 10,
        ),
      ),]);
  }
}

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
