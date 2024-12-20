import 'package:flutter/gestures.dart';
import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/image_const_app.dart';
import 'package:xwood/export.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';
import 'package:xwood/screens/widgets/custom_elevated_button.dart';
import 'package:xwood/screens/widgets/custom_outlined_button.dart';
import 'package:xwood/screens/widgets/custom_text_field.dart';
import 'package:xwood/screens/widgets/custom_title_text.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _mobileC = TextEditingController();
  final _countryCodeC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: p24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          textDirection: TextDirection.ltr,
          children: [
            gap16,
            CustomPageTitleText(
              title: "Lets Get Started",
              subtitle: "dvcsd daccccc adsc as sd dddddddddddd",
            ),
            gap40,
            CustomMobileTextField(codeController: _countryCodeC, mobileNoController: _mobileC),
            gap30,
            CustomElevatedButton(
              btnName: "Continue",
              onPressed: onContinue,
            ),
            gap24,
            CustomOutlinedButton(
              btnName: 'Continue as Guest',
              btnPressed: onContinueAsGuest,
            ),
            gap48,
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text:  TextSpan(
                  children: [
                    TextSpan(text: 'By continuing, I agree to the '),
                    TextSpan(
                      text: 'Terms of Use',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColorConst.primary,
                      ),
                    ),
                    TextSpan(text: ' & '),
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = (){},
                      text: 'Privacy Policy',
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
            ),
          ],
        ),
      ),
    );
  }

  void onContinue() {
    Get.toNamed(AppRoutes.profileSetupScreen);
  }

  void onContinueAsGuest() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
