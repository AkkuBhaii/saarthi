import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/string_constants.dart';
import '../../utils.dart';
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
    var deviceSize = MediaQuery.of(context).size;
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
            child: Text(
              StringConstants.tap,
              style: googleFont(
                'Lexend',
                fontSize: deviceSize.width * 0.08,
                fontWeight: FontWeight.w600,
                color: ColorConstants.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
