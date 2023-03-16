import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/string_constants.dart';
import '../referral_screen/referral_screen.dart';

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
          gradient: ColorConstants.mainGradient,
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const ReferralScreen();
                  },
                ),
              );
            },
            child: const Text(
              StringConstants.tap,
              style: TextStyle(
                fontSize: 35,
                color: ColorConstants.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
