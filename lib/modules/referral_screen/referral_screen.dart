import 'package:flutter/material.dart';

import '../../constants/asset_paths.dart';
import '../../constants/color_constants.dart';
import '../../utils.dart';

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
    milliseconds: 700,
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
              AnimatedContainer(
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
              FadeTransition(
                opacity: animation,
                child: AnimatedContainer(
                  alignment: startAnimation
                      ? Alignment.bottomCenter
                      : Alignment.topCenter,
                  duration: _animationDuration,
                  child: Image.asset(
                    AssetPaths.boxTop,
                    height: 216,
                    width: 351,
                  ),
                ),
              ),
              FadeTransition(
                opacity: animation,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    AssetPaths.man,
                    height: 170,
                    width: 114,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  AssetPaths.clouds,
                ),
              ),
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
              Align(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 200,
                  ),
                  child: Column(
                    children: [
                      Text(
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
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        AssetPaths.blueGifts,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.blue,
                          fixedSize: const Size(
                            280,
                            20,
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
                    ],
                  ),
                ),
              ),
              FadeTransition(
                opacity: animation,
                child: AnimatedContainer(
                  margin: EdgeInsets.only(
                    top: !startAnimation ? 100 : 0,
                  ),
                  duration: _animationDuration,
                  curve: Curves.easeIn,
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 38,
                        width: 240,
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
            ],
          ),
        ),
      ),
    );
  }
}
