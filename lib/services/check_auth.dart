/*
import 'package:athathi/core/app_store/shared_pref.dart';
import 'package:athathi/models/user_model.dart';

import '../../export.dart';

class AuthCheckServices {
  Future<UserM> getUserData() => SharedPrefService.getUser();

  void checkAuthentication(BuildContext context) {
    getUserData()
        .then((value) async {
          await Future.delayed(const Duration(seconds: 4), () {
            debugPrint("get token is => ${value.accessToken}");
            if (value.accessToken == "" ||
                value.accessToken == null ||
                value.accessToken!.isEmpty) {
              // Navigator.pushReplacementNamed(context, RouteName.logInScreen);
            } else {
              // Navigator.pushReplacementNamed(context, RouteName.homeScreen);
            }
          });
        })
        .onError((e, s) {
          debugPrint(e.toString());
        });
  }
}
*/
