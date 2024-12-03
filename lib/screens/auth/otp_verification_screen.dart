import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';
import 'package:xwood/screens/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:xwood/screens/widgets/custom_title_text.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomPageTitleText(
            title: "OTP Verification",
            subtitle: "We have just sent OTP code to your below mobile number",
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: '+454633'),
                TextSpan(
                  text: 'Edit',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColorConst.primary,
                  ),
                ),
              ],
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),

          CustomElevatedButton(btnName: "Verify", onPressed: () {}),
        ],
      ),
    );
  }
}
