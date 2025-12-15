import 'package:bookup/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidinganimation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _slidinganimation = Tween<Offset>(begin: Offset(0, 4), end: Offset(0, 0))
        .animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        );
    _animationController.forward();
  }
@override
  void dispose() {
    super.dispose();
    _animationController.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image(image: AssetImage(AppAssets.logo))),
          SizedBox(height: 20),
          AnimatedBuilder(
            animation: _slidinganimation,
            builder: (BuildContext context, _) {
              return SlideTransition(
                position: _slidinganimation,
                child: Text(
                  "Ready to explore your next favorite book?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white54),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
