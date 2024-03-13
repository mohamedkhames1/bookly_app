import 'package:booklyapp/core/widget/custom_error.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FutureListViewItems extends StatelessWidget {
  const FutureListViewItems({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, string, object){
            return const CustomError(errMessage: 'errMessage');
          },
        ),
      ),
    );
  }
}
