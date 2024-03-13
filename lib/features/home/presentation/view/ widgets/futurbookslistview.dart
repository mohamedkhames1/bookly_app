import 'package:booklyapp/core/utlis/app_rout.dart';
import 'package:booklyapp/features/home/presentation/view_models/feature_book_cubit/feature_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/widget/customLoading.dart';
import '../../../../../core/widget/custom_error.dart';
import 'customlistviewitems.dart';

class FutureBooksListView extends StatelessWidget {
  const FutureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                itemCount: state.books.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  const EdgeInsets.only(right: 16),
                    child: GestureDetector(
                      onTap: (){
                        GoRouter.of(context).push(AppRout.book_details,extra: state.books[index]);
                      },
                        child: FutureListViewItems(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    )),
                  );
                }),
          );
        } else if (state is FeatureBooksFailure) {
          return CustomError(
            errMessage: state.errorMessage,
          );
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
