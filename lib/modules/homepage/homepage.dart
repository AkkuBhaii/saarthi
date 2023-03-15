import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/string_constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorConstants.pinkGradient,
              ColorConstants.amberGradient,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Text(
            StringConstants.tap,
            style: TextStyle(
              fontSize: 35,
              color: ColorConstants.white,
            ),
          ),
        ),
      ),
    );
  }
}
