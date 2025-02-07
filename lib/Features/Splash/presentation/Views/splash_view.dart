import 'package:bookly/Features/Splash/presentation/Views/widgets/splash_view_body.dart';
import 'package:bookly/constant.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SplashViewbody(),
    );
  }
}
