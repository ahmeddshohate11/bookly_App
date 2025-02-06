import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custome_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custome_book_item.dart';
import 'package:bookly/core/utils/styles.dart';

import 'package:flutter/material.dart';

import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(

      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
          children: [
            CustomeBookDetailsAppBar(),
            BookDetailsSection(),
            SimilarBooksSection(),
              const SizedBox(
              height: 30,
            ),
           
           
          ],
                ),
              ),
        ),
      ],
    );
  }
}
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
        var width = MediaQuery.of(context).size.width;
    return  Column(
        children: [
           Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .2),
                child: CustomeBookImage()),
            const SizedBox(
              height: 20,
            ),
            Text(
              'The Jungle Book ',
              style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 37,
            ),
            BooksAction(),
        ],
    );
  }
}

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       Expanded(
              child: const SizedBox(
                height: 50,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also Like',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SimilarBooksListView(),
          
    ],);
  }
}