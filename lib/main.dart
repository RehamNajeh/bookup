import 'package:bookup/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final themeNotifier = ThemeNotifier();

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ListenableBuilder(
          listenable: themeNotifier,
          builder: (context, child) {
            return MaterialApp.router(
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              themeMode: themeNotifier.themeMode,
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
            );
          },
        );
      },
    );
  }
}
