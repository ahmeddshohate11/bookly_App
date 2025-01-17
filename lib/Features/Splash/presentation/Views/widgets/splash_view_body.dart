import 'package:bookly/Features/Splash/presentation/Views/widgets/sliding_text.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
      navigateToHome(); 
  }

 

  @override
  void dispose() {
   
    super.dispose();
     animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4),
        // Use AnimatedBuilder to manage the animation
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationController);

    // Start the animation
    animationController.forward();
  }
   void navigateToHome() {
      Future.delayed( const Duration(seconds: 2), () {
     Get.to(() => const HomeView(),transition: Transition.fade,
     duration: kTransitionDuration);
    
        }); 
  }
}
