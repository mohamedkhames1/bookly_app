import 'package:flutter/material.dart';
import 'bestsellerlistviewitems.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (context,indes){
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: BestSellerListViewItems(),
          );
        });
  }
}
