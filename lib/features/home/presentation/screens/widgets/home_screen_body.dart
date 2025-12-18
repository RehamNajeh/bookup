import 'package:bookup/core/constants/app_assets.dart';
import 'package:bookup/core/constants/app_constants.dart';
import 'package:bookup/core/utils/styles.dart';
import 'package:bookup/features/home/presentation/screens/widgets/books_list_view.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
        const CustomAppBar(),
        const BooksListView(),
        Text("Best Sellers", style: Styles.textStyle18.copyWith(fontFamily: AppConstants.kGtSectraFine),),
        const SizedBox(height: 16,),
        const BestSellerListView(),
       
        ]
        ),
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
      width: 60,
      height: 90,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.bookPlaceholder),
          fit: BoxFit.cover,
        ),

        borderRadius: BorderRadius.circular(8),
      ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("The Alchemist", style: Styles.textStyle18,),
            Text("by Paulo Coelho", style: Styles.textSmall,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("12\$"),
                Icon(Icons.star, color: Colors.amber[700],),
                SizedBox(width: 4,),
                Text("4.8", style: Styles.textSmall,),
              ],
            )
          ],
        )
      ],
    );
  }
}