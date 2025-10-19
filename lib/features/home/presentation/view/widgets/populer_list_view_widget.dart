import 'package:bookly_app/features/home/presentation/view/widgets/populer_image_item_list_widget.dart';
import 'package:flutter/material.dart';

class PopulerListViewWidget extends StatelessWidget {
  const PopulerListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: PopulerImageItemListWidget(),
          );
        },
      ),
    );
  }
}
