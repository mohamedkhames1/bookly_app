import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utlis/app_rout.dart';
import '../../../../../core/utlis/styles.dart';
import 'boolratig.dart';
import 'customlistviewitems.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRout.book_details);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            const FutureListViewItems(),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of fire ',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),),
                  const SizedBox(height: 3,),
                  Text('J.K. Rowling',style: Styles.textStyle14,),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('19.99 €',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                      const Spacer(),
                      const BookRating()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

