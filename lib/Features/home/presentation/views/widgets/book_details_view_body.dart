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
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomeBookDetailsAppBar(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: CustomeBookImage()),
          const SizedBox(
            height: 5,
          ),
          Text(
            'The Jungle Book ',
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
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
            height: 30 ,
          ),
         
          BooksAction(),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('You can also Like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),),
          ),
          const SizedBox(
            height: 15,
          ),
         const SimilarBooksListView(),
         const SizedBox(
            height: 30,
          ) ,
        ],
      ),
    );
  }
}
