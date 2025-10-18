import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({super.key});

  @override
  State<AnimatedTextWidget> createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animation;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    textAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animation.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingAnimation,
      child: Text(
        "Read Free Books",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => HomeView(),
        transition: Transition.fade,
        duration: const Duration(milliseconds: 3000),
      );
    });
  }

  void textAnimation() {
    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 3),
      end: Offset(0, 0),
    ).animate(animation);
    animation.forward();
  }
}
