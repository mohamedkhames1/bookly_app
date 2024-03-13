import 'package:booklyapp/core/widget/customLoading.dart';
import 'package:booklyapp/core/widget/custom_error.dart';
import 'package:booklyapp/features/home/presentation/view_models/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bestsellerlistviewitems.dart';

class BestSellerListView extends StatelessWidget {
  BestSellerListView({super.key, required this.isbestseller});

  bool isbestseller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              physics: isbestseller == true
                  ? const NeverScrollableScrollPhysics()
                  : null,
              shrinkWrap: true,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListViewItems(bookModel: state.books[index],),
                );
              });
        }else if ( state is NewsetBooksFailure){
          return CustomError(errMessage: state.errorMessage);
        }else{
          return const CustomLoading();
        }
      },
    );
  }
}
