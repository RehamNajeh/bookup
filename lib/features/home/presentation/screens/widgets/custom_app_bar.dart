import 'package:bookup/core/core.dart';
import 'package:bookup/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AppAssets.logo,
          height: AppSizes.w100,
          width: AppSizes.w100,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                themeNotifier.toggleTheme();
              },
              icon: Icon(
                themeNotifier.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              ),
            ),
            IconButton(
              onPressed: () {
                context.push(AppRouter.searchScreen);
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ),
      ],
    );
  }
}
