import 'package:coffee_animation_app/presentation/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TopContainerTitle extends StatelessWidget {
  TopContainerTitle({
    Key? key,
    required this.animationController,
    required this.copAnimated,
    required this.textAnimated,
  }) : super(key: key);

  final AnimationController animationController;
  bool copAnimated;
  bool textAnimated;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kDuration,
      height: copAnimated
          ? MediaQuery.of(context).size.height / 1.9
          : MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(copAnimated ? 40.0 : 0.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Visibility(
            visible: !copAnimated,
            child: Lottie.asset(
              'assets/animations/coffee_animation.json',
              controller: animationController,
              onLoaded: (lottieComposition) {
                animationController
                  ..duration = lottieComposition.duration
                  ..forward();
              },
            ),
          ),
          Visibility(
            visible: copAnimated,
            child: Image.asset(
              'assets/images/coffee.png',
              height: 190.0,
              width: 190.0,
            ),
          ),
          Center(
            child: AnimatedOpacity(
              opacity: textAnimated ? 1 : 0,
              duration: kDuration,
              child: const Text(
                'Coffee Store',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: kColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
