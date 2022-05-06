import 'package:flutter/material.dart';

class BottomContainerIntro extends StatelessWidget {
  const BottomContainerIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Find the best coffee for you',
              style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 30.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Proin felis urna, sagittis eget blandit tincidunt, iaculis '
              'ut tellus. Praesent scelerisque luctus neque non porttitor. '
              'Aenean sed mauris sed tortor suscipit ultrices.',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white.withOpacity(0.8),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 50.0),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 85.0,
                width: 85.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: const Icon(
                  Icons.chevron_right,
                  size: 50.0,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
