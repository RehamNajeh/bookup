import 'dart:math';

import 'package:bookup/core/core.dart';
import 'package:bookup/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookup/features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksCubitSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * AppSizes.f015,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => CustomListViewItem(
        imageUrl: state.similerBooks[index].volumeInfo.imageLinks.thumbnail ?? '',
      ),
      separatorBuilder: (context, index) => const SizedBox(),
      itemCount: 10,
    ),
  );
}else if (state is SimilerBooksCubitFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        }
      },
    );
  }
}
