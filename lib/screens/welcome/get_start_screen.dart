import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/image_const_app.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';
import 'package:xwood/data/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../export.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Stack(
              children: [
                SvgPicture.asset(AppAssetsConst.eclipsLChair, height: 420),
                SvgPicture.asset(AppAssetsConst.eclipsSlChair, height: 190),
                // Positioned(
                //   bottom: 20,
                //   child: SvgPicture.asset(
                //     AppAssetsConst.chairSvg,
                //     height: 35,
                //     width: 308,
                //   ),
                // ),
                Positioned(
                  right: 5.0,
                  // bottom: 20,
                  child: Image.asset(
                    AppAssetsConst.chair,
                    fit: BoxFit.cover,
                    height: 417,
                    width: 248,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(AppAssetsConst.eclipsOut),
            ),

            Padding(
              padding: p24,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 450,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(text: 'Design Your\n'),
                        TextSpan(
                          text: 'Dream ',
                          style: TextStyle(color: AppColorConst.primary),
                        ),
                        TextSpan(text: 'Space'),
                      ],
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 90.0),
                    child: Text(
                      "Do Effortless shopping just browse, select, and purchase within seconds—it's simple!",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: p24,
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () async {
                    // if (SharedPrefService.instance == null)
                    //   SharedPrefService.getInstance();
                    SharedPrefService.instance?.isFirstTime = true;
                    print(
                      SharedPrefService.instance?.isFirstTime ??
                          SharedPrefService.instance?.isFirstTime,
                    );
                    Get.toNamed(AppRoutes.chooseLangScreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10.0,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                          color: AppColorConst.primary,
                        ),
                      ),
                      Icon(
                        Icons.arrow_circle_right_rounded,
                        color: AppColorConst.primary,
                        size: 45,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
