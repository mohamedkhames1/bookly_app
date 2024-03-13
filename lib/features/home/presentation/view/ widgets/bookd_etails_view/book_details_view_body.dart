import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/presentation/view/%20widgets/boolratig.dart';
import 'package:booklyapp/features/home/presentation/view/%20widgets/futurbookslistview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../../core/utlis/styles.dart';
import '../customlistviewitems.dart';
import 'bookaction.dart';
import 'custom_book_details_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
 final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2020),
            child:  FutureListViewItems(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'',),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              bookModel.volumeInfo.title!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Styles.textStyle30,
            ),
          ),
          Center(
            child: Opacity(
                opacity: .7,
                child: Text(
                  bookModel.volumeInfo.authors![0]??'',
                  style: Styles.textStyle20,
                )),
          ),
           BookRating(rating: bookModel.volumeInfo.averageRating??0, count: bookModel.volumeInfo.ratingsCount??0,),
          const SizedBox(height: 10,),
          const BookAction(),
          const SizedBox(height:40 ,),
          Text('You can also like',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w900),),
          const SizedBox(height:16 ,),
          const SizedBox(
              height: 150,
              child: FutureBooksListView()),
          const SizedBox(height: 40,)
        ],
      ),
    );
  }
}

