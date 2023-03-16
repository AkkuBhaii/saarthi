import 'package:flutter/material.dart';

import '../../constants/asset_paths.dart';
import '../../constants/color_constants.dart';

class ReferralScreen extends StatelessWidget {
  const ReferralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
            top: 140,
          ),
          child: Container(
            height: 600,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: ColorConstants.mainGradient,
              borderRadius: BorderRadius.all(
                Radius.circular(
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
                  const Text(
                    'ENTER\nREFERRAL CODE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
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
                  const Text(
                    'ENTER CODE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                    child: const Text(
                      'Add Your Buddy',
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
