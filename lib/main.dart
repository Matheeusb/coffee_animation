import 'package:flutter/material.dart';

import 'presentation/pages/coffee.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee Animation App',
      debugShowCheckedModeBanner: false,
      home: CoffeeScreen(),
    );
  }
}
