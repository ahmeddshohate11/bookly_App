import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListVievItem extends StatelessWidget {
  const FeaturedListVievItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        height: MediaQuery.of(context).size.height * .25,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
