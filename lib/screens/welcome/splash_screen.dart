import "dart:developer";

import "package:xwood/data/shared_pref.dart";
import "package:xwood/core/utils/constants/colors_const_app.dart";
import "package:xwood/core/utils/constants/image_const_app.dart";
import "package:flutter_svg/flutter_svg.dart";

import "../../export.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), check);
    super.initState();
  }

  void check() async {
    var sp = SharedPrefService.instance!;

    if (sp.authToken != null && sp.authToken != "") {
      log("authToken is => ${sp.authToken}");
      log("authToken Type is => ${sp.authToken.runtimeType}");

      Get.offNamed(AppRoutes.homeScreen);
    } else if (sp.langSelected != null && sp.langSelected != "") {
      log("lang is => ${sp.langSelected}");
      Get.offNamed(AppRoutes.loginScreen);
    } else if (sp.isFirstTime != null) {
      log("firstTime is => ${sp.isFirstTime}");
      sp.isFirstTime!
          ? Get.offNamed(AppRoutes.chooseLangScreen)
          : Get.offNamed(AppRoutes.getStartedScreen);
    } else if (sp.isSetupProfileDone != null) {
      log("setup done is => ${sp.isSetupProfileDone}");
      sp.isSetupProfileDone!
          ? Get.offNamed(AppRoutes.loginScreen)
          : Get.offNamed(AppRoutes.profileSetupScreen);
    } else {
      log("defaul ");
      Get.offNamed(AppRoutes.loginScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColorConst.primary,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          SvgPicture.asset(AppAssetsConst.plantTable, height: 310, width: 196),
          Center(child: buildLogoAnimate()),
        ],
      ),
    );
  }

  SizedBox buildLogoAnimate() {
    return SizedBox(
      height: 250,
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(seconds: 3),
        builder: (context, val, _) {
          return Opacity(
            opacity: val,
            child: SvgPicture.asset(
              AppAssetsConst.xwoodLogoWhite,
              height: 38,
              width: 180,
            ),
          );
        },
      ),
    );
  }
}
