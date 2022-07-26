import 'package:adzone/models/product.dart';
import 'package:adzone/size_config.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductImage extends StatelessWidget {
  final int selectedimage = 0;
  const ProductImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 80.w,
          child: AspectRatio(aspectRatio: 1, child: Image.asset(product.images[selectedimage]),),
        ),
      ],
    );
  }
}