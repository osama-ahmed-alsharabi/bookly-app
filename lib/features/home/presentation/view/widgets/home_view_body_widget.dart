import 'package:bookly_app/core/widgets/custom_app_bar_widget.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/populer_list_view_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBodyWidget extends StatelessWidget {
  const HomeViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarWidget(),
        PopulerListViewWidget(),
      ],
    );
  }
}
