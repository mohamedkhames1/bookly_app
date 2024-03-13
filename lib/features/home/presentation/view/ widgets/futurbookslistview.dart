import 'package:flutter/material.dart';
import 'customlistviewitems.dart';

class FutureBooksListView extends StatelessWidget {
  const FutureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return const FutureListViewItems();
          }),
    );
  }
}

