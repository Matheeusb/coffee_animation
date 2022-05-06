import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_container_intro.widget.dart';
import '../widgets/top_container_title.widget.dart';

class CoffeeScreen extends StatefulWidget {
  const CoffeeScreen({Key? key}) : super(key: key);

  @override
  State<CoffeeScreen> createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool _copAnimated = false;
  bool _textAnimated = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
    _animationController.addListener(() {
      if (_animationController.value > 0.7) {
        _animationController.stop();
        setState(() {
          _copAnimated = true;
        });
        Future.delayed(kDuration, () {
          setState(() {
            _textAnimated = true;
          });
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: Stack(
        children: [
          TopContainerTitle(
              animationController: _animationController,
              textAnimated: _textAnimated,
              copAnimated: _copAnimated),
          Visibility(
            visible: _copAnimated,
            child: const BottomContainerIntro(),
          ),
        ],
      ),
    );
  }
}
