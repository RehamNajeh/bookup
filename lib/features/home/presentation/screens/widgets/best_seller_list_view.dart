import 'package:bookup/core/core.dart';
import 'package:bookup/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookup/features/home/presentation/screens/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) =>  BestSellerListViewItem(
              bookModel: state.newestBooks[index],
                  
            ),
            separatorBuilder: (context, index) =>
                SizedBox(height: AppSizes.w10),
            itemCount: state.newestBooks.length,
          );
        } else if (state is NewestBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        }
      },
    );
  }
}
