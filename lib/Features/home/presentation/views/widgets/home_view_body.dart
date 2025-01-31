import 'package:bookly/Features/home/presentation/views/widgets/custome_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custome_list_view_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          CustomeAppBar(),
          const SizedBox(height: 50),
          FeaturedListVievItem(),
           FeaturedBooksdListView(),
           const SizedBox(height: 40),
           Text('Best Seller',
           style: Styles.titleMeduim,)
      
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
      AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          height: MediaQuery.of(context).size.height * .25,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage(AssetsData.testImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Column(
        children: [
        
      ]),
      ]),
    );
  }
}