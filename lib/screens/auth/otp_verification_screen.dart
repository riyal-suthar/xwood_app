import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';
import 'package:xwood/screens/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: p4,
            child: Text(
              "OTP Verification",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColorConst.scrim,
                fontSize: 28,
              ),
            ),
          ),
          Padding(
            padding: p4,
            child: Text(
              "We have just sent OTP code to your below mobile number",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: AppColorConst.scrim,
                fontSize: 16,
              ),
            ),
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
