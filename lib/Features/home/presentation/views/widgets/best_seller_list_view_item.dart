
import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(children: [
        AspectRatio(
          aspectRatio: 3 / 4,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                'Herry Potter and the Global of Fire',
                maxLines: 2,
                style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine ),
              )),
              const SizedBox(height: 2),
              const Text(
                'J.K. Rowling',
                style: Styles.textStyle14,
              ),
             
              Row(
                children: [
                  Text('19.99\$',
                  style: Styles.textStyle14,
                  )

                ],
              )

        ]),
      ]),
    );
  }
}
