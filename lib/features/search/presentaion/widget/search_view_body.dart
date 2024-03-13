import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/utlis/styles.dart';
import '../../../home/presentation/view/ widgets/bestsellerlistview.dart';
import 'search_text_filed.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView(

        children: [
          const SizedBox(height: 30,),
          const CustomSearchTextFiled(),
          const SizedBox(height: 20,),
          Text(
            'Search Result ',
            style: Styles.textStyle18,
          ),
          BestSellerListView(isbestseller: false,),
        ],
      ),
    );
  }
}

