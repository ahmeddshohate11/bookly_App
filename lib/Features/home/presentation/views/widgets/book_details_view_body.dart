import 'package:bookly/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custome_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

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
                Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
