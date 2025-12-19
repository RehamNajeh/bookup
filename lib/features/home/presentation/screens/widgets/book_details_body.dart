import 'package:bookup/features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: .center,
      children: [
        const BookDetailsAppBar(),
        Padding(padding: EdgeInsets.symmetric(horizontal: width * 0.15), 
        child: const CustomListViewItem()
        ),
      ],
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