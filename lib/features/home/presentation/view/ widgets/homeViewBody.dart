import 'package:booklyapp/core/utlis/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bestsellerlistview.dart';
import 'futurbookslistview.dart';
import 'homeviewAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: CustomAppbar(),
              ),
              const FutureBooksListView(),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left:30),
                child: Text(
                  'Best Seller ',
                  style: Styles.textStyle18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ) ,
        ),
        const SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );
  }
}

