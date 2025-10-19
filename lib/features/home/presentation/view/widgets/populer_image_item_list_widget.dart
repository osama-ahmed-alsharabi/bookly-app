import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class PopulerImageItemListWidget extends StatelessWidget {
  const PopulerImageItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppAssets.imagesTestImage),
          ),
        ),
      ),
    );
  }
}
