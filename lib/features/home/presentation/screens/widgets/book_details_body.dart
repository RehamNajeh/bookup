import 'package:bookup/core/constants/app_constants.dart';
import 'package:bookup/core/utils/styles.dart';
import 'package:bookup/features/home/presentation/screens/widgets/book_rating_widget.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Column(
        crossAxisAlignment: .center,
        children: [
          const BookDetailsAppBar(),
          Padding(padding: EdgeInsets.symmetric(horizontal: width * 0.15), 
          child: const CustomListViewItem()
      
          ),
          SizedBox(height: 44),
          Text("The Jungle Book", style: Styles.textStyle30.copyWith(
            fontFamily: AppConstants.kGtSectraFine,
          ),),
          SizedBox(height: 3),
          Text("Rudyard Kipling", style: Styles.textStyle18.copyWith(
            color: Colors.grey[600],
            fontStyle: FontStyle.italic,
          ),
          ),
          const SizedBox(height: 18),
           BookRating( mainAxisAlignment: MainAxisAlignment.center,),
        ],
      ),
    );
  }
}
class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: Icon( Icons.close)),
        IconButton(onPressed: (){}, icon: Icon( Icons.shopping_cart_outlined)),
      ],
    );
  }
}