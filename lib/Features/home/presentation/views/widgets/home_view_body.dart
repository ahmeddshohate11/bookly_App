import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custome_app_bar.dart';

import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view.dart';


import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppBar(),
          const SizedBox(height: 10),
          // FeaturedListVievItem(),
          FeaturedBooksdListView(),
          const SizedBox(height: 5),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          const SizedBox(height: 20),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}
