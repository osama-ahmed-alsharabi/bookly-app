import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        children: [
          Image.asset(AppAssets.imagesBOOKLY , height: 24,),
          Spacer(),
          GestureDetector(
            onTap: () {},
            child: Image.asset(AppAssets.imagesIcSearch , height: 24,),
          ),
        ],
      ),
    );
  }
}
