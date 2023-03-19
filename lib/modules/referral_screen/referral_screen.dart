import 'package:flutter/material.dart';

import '../../constants/asset_paths.dart';
import '../../constants/color_constants.dart';
import '../../utils.dart';
import '../final%20_screen/final_screen.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({
    super.key,
  });

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  bool startAnimation = true;

  final _animationDuration = const Duration(
    milliseconds: 850,
  );

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(
      seconds: 0,
    )).then(
      (value) {
        setState(
          () {
            startAnimation = false;
          },
        );
      },
    );

    controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(controller)
      ..addListener(
        () {
          setState(
            () {},
          );
        },
      );

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Stack(
            children: [
              //Gradient Box
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(
                    top: fem * 120,
                  ),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: ColorConstants.mainGradient,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        20,
                      ),
                      topRight: Radius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
              ),
              //Left Stars
              FadeTransition(
                opacity: animation,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    AssetPaths.leftStars,
                    height: fem * 300,
                    width: fem * 80,
                  ),
                ),
              ),
              //Only Star
              FadeTransition(
                opacity: animation,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    AssetPaths.starOnly,
                    height: fem * 330,
                    width: fem * 100,
                  ),
                ),
              ),
              //Right Stars
              FadeTransition(
                opacity: animation,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    AssetPaths.rightStars,
                    height: fem * 201,
                    width: fem * 98,
                  ),
                ),
              ),
              //Right Stars Tw0
              FadeTransition(
                opacity: animation,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    AssetPaths.rightStarsTwo,
                    height: fem * 400,
                    width: fem * 58,
                  ),
                ),
              ),
              //Lights
              AnimatedContainer(
                duration: _animationDuration,
                height: startAnimation ? fem * 573 : fem * 800,
                width: startAnimation ? fem * 413 : fem * 583,
                curve: Curves.easeIn,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AssetPaths.lights,
                    height: fem * 573,
                    width: fem * 413,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //BoxTop
              FadeTransition(
                opacity: animation,
                child: AnimatedContainer(
                  alignment: startAnimation
                      ? Alignment.bottomCenter
                      : Alignment.topCenter,
                  duration: _animationDuration,
                  child: Image.asset(
                    AssetPaths.boxTop,
                    height: fem * 180,
                    width: fem * 351,
                  ),
                ),
              ),
              //Man
              FadeTransition(
                opacity: animation,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    AssetPaths.man,
                    height: fem * 140,
                    width: fem * 114,
                  ),
                ),
              ),
              //Clouds
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  AssetPaths.clouds,
                ),
              ),
              //OpenGift
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: fem * 30,
                  ),
                  child: Image.asset(
                    AssetPaths.openGift,
                  ),
                ),
              ),
              //Enter Referral Code Widget
              Align(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: fem * 160,
                  ),
                  child: Column(
                    children: [
                      //Enter Referral Code Text
                      FadeTransition(
                        opacity: animation,
                        child: Text(
                          'ENTER\nREFERRAL CODE',
                          textAlign: TextAlign.center,
                          style: safeGoogleFont(
                            'Lexend',
                            fontSize: 22 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.25 * ffem / fem,
                            letterSpacing: -0.24 * fem,
                            color: ColorConstants.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: fem * 18,
                      ),
                      //Blue Gifts
                      FadeTransition(
                        opacity: animation,
                        child: Image.asset(
                          AssetPaths.blueGifts,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Enter Code Widget
              FadeTransition(
                opacity: animation,
                child: AnimatedContainer(
                  margin: EdgeInsets.only(
                    top: !startAnimation ? fem * 155 : 0,
                  ),
                  duration: _animationDuration,
                  curve: Curves.easeIn,
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Enter Code Text
                      Text(
                        'Enter Code',
                        style: safeGoogleFont(
                          'Lexend',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.25 * ffem / fem,
                          letterSpacing: -0.2 * fem,
                          color: ColorConstants.white,
                        ),
                      ),
                      SizedBox(
                        height: fem * 6,
                      ),
                      //Code Field
                      Container(
                        height: fem * 30,
                        width: fem * 200,
                        decoration: BoxDecoration(
                          color: ColorConstants.white.withOpacity(0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Add Your Buddy Button
              Positioned(
                bottom: fem * 155,
                left: fem * 72,
                child: FadeTransition(
                  opacity: animation,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const FinalScreen();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.blue,
                      fixedSize: Size(
                        fem * 230,
                        fem * 20,
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: ColorConstants.black,
                        ),
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: Text(
                      'ADD YOUR BUDDY',
                      style: safeGoogleFont(
                        'Lexend',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.25 * ffem / fem,
                        letterSpacing: -0.2 * fem,
                        color: ColorConstants.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
