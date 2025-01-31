import 'package:bookly/Features/home/presentation/views/widgets/custome_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custome_list_view_item.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomeAppBar(),
        const SizedBox(height: 50),
        FeaturedListVievItem(),
        Expanded(child: FeaturedBooksdListView()),
      ],
    );
  }
}

class FeaturedBooksdListView extends StatelessWidget {
  const FeaturedBooksdListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FeaturedListVievItem(),
            );
          }),
    );
  }
}
