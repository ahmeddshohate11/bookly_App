import 'package:bookly/Features/home/presentation/views/widgets/custome_book_item.dart';
import 'package:flutter/material.dart';

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
              child: CustomeBookImage(),
            );
          }),
    );
  }
}
