import 'package:xwood/core/utils/constants/image_const_app.dart';
import 'package:xwood/screens/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:xwood/core/config/routes/app_routes.dart';
import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';
import 'package:xwood/screens/widgets/custom_title_text.dart';

import '../../data/shared_pref.dart';

class ChooseLangScreen extends StatefulWidget {
  const ChooseLangScreen({super.key});

  @override
  State<ChooseLangScreen> createState() => _ChooseLangScreenState();
}

class _ChooseLangScreenState extends State<ChooseLangScreen> {
  List<String> langList = ["English", "Gujarati", "German"];
  var langSelected = "English";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: HexColor("#EEE2CA"),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 119),
            child: Row(
              spacing: 324,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(AppAssetsConst.lampPng),
                Image.asset(AppAssetsConst.hideenPlantPng),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SvgPicture.asset(
              AppAssetsConst.lampBlur,
              height: 345,
              width: 345,
            ),
          ),

          Align(alignment: Alignment.bottomCenter, child: buildChooseLang()),
          // SvgPicture.asset(AppAssetsConst.lamp),
        ],
      ),
    );
  }

  Widget buildChooseLang() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomPageTitleText(title: "Choose Language"),
          gapy16,
          buildLangList(),
        ],
      ),
    );
  }

  Widget buildLangList() {
    return Container(
      padding: p20,
      // margin: p8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            primary: true,
            // scrollDirection: Axis.vertical,
            itemCount: langList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: p4,
                child: RadioMenuButton(
                  value: langList[index],
                  groupValue: langSelected,
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(
                        color: AppColorConst.onSecondaryContainer,
                      ),
                    ),
                  ),
                  onChanged: (val) {
                    print("val is $val");
                    setState(() {
                      langSelected = val!;
                    });
                    print("choose $langSelected");
                  },
                  child: Text(langList[index]),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomElevatedButton(
              btnName: "Continue",
              onPressed: () {
                SharedPrefService.instance?.langSelected = langSelected;
                print(SharedPrefService.instance?.langSelected.toString());
                Get.toNamed(AppRoutes.profileSetupScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
