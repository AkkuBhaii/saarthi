import 'package:flutter/material.dart';

import '../../constants/asset_paths.dart';
import '../../constants/color_constants.dart';
import '../../utils.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> reverseAnimation;
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
    reverseAnimation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(controller)
      ..addListener(
        () {
          setState(
            () {},
          );
        },
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
                  margin: const EdgeInsets.only(
                    top: 145,
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
              //Final Stars
              FadeTransition(
                opacity: animation,
                child: AnimatedContainer(
                  margin: const EdgeInsets.only(
                    top: 100,
                  ),
                  alignment:
                      startAnimation ? Alignment.centerLeft : Alignment.center,
                  duration: _animationDuration,
                  child: Image.asset(
                    AssetPaths.finalStars,
                    height: 40,
                    width: 400,
                  ),
                ),
              ),
              //Left Stars
              FadeTransition(
                opacity: reverseAnimation,
                child: AnimatedContainer(
                  margin: startAnimation
                      ? const EdgeInsets.only(
                          top: 0,
                        )
                      : const EdgeInsets.only(
                          top: 100,
                        ),
                  alignment:
                      startAnimation ? Alignment.centerLeft : Alignment.center,
                  duration: _animationDuration,
                  child: Image.asset(
                    AssetPaths.leftStars,
                    height: 288,
                    width: 80,
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
                    height: 400,
                    width: 100,
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
                    height: 201,
                    width: 98,
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
                    height: 500,
                    width: 58,
                  ),
                ),
              ),
              //Lights
              FadeTransition(
                opacity: reverseAnimation,
                child: AnimatedContainer(
                  duration: _animationDuration,
                  height: startAnimation ? 573 : 800,
                  width: startAnimation ? 413 : 583,
                  curve: Curves.easeIn,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      AssetPaths.lights,
                      height: 573,
                      width: 413,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              //BoxTop
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  AssetPaths.boxTop,
                  height: 216,
                  width: 351,
                ),
              ),
              //Man
              FadeTransition(
                opacity: reverseAnimation,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    AssetPaths.man,
                    height: 170,
                    width: 114,
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
                  margin: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  child: Image.asset(
                    AssetPaths.openGift,
                  ),
                ),
              ),
              FadeTransition(
                opacity: animation,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Blue Gifts
                      FadeTransition(
                        opacity: animation,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            AssetPaths.emoji,
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Your Referral Code\nAccepted',
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
                    ],
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
