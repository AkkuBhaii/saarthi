import 'package:flutter/material.dart';

import '../../constants/asset_paths.dart';
import '../../constants/color_constants.dart';
import '../../utils.dart';

class ReferralScreen extends StatelessWidget {
  const ReferralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
            top: 140,
          ),
          child: Stack(
            children: [
              Container(
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 60,
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
                        height: 20,
                      ),
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
                      const SizedBox(
                        height: 20,
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
              //Bottom
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    AssetPaths.clouds,
                  ),
                  Image.asset(
                    AssetPaths.openGift,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
