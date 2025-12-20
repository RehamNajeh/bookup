import 'package:bookup/core/constants/app_constants.dart';
import 'package:bookup/core/utils/styles.dart';
import 'package:bookup/features/home/presentation/screens/widgets/book_details_app_bar.dart';
import 'package:bookup/features/home/presentation/screens/widgets/book_rating_widget.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_button.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:bookup/features/home/presentation/screens/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: .center,
          children: [
            const BookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.15),
              child: const CustomListViewItem(),
            ),
            SizedBox(height: 20),
            Text(
              "The Jungle Book",
              style: Styles.textStyle30.copyWith(
                fontFamily: AppConstants.kGtSectraFine,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 18),
            BookRating(mainAxisAlignment: MainAxisAlignment.center),
            const SizedBox(height: 37),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    textColor: Colors.black,
                    text: '22.1\$',
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    textColor: Colors.white,
                    text: 'Free Preview',
                    backgroundColor: Color.fromARGB(255, 230, 174, 54),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                ),
                
      
              ],
              
            ),
            Expanded(child: SizedBox(height: 20)),
            Align(
                alignment: Alignment.centerLeft,
              child: Text("You can also like", style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold
              ))),
            SizedBox(height: 16),
              SimilerBooksListView(),
      
          ],
        ),
      ),
        ),
      ],
    );
  }
}
