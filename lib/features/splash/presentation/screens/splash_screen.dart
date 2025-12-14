import 'package:bookup/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage(AppAssets.logo),
            ),
          ),
          SizedBox(height: 20),
          Text("Ready to explore your next favorite book?",
              textAlign: TextAlign.center,
              style:TextStyle(fontSize: 18, color: Colors.white54),
                  ),
        ],
      ),
    );
  }
}