import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static SharedPrefService? instance;
  static SharedPreferences? pref;

  SharedPrefService();

  static Future<SharedPrefService?> getInstance() async {
    instance ??= SharedPrefService();
    pref ??= await SharedPreferences.getInstance();
    return instance;
  }

  // keys for your shared preference
  static String isFirstTimePageKey = 'isFirstTimeKey';
  static String isLangSelectedKey = 'isLangSelectedKey';
  static String isSetupProfileDoneKey = 'isSetupProfileDoneKey';
  static String isLoggedInKey = 'isLoggedInKey';
  static String authTokenKey = 'authTokenKey';

  bool? get isFirstTime => pref?.getBool(isFirstTimePageKey) ?? false;
  set isFirstTime(value) => pref?.setBool(isFirstTimePageKey, value ?? false);

  String? get langSelected => pref?.getString(isLangSelectedKey);
  set langSelected(value) => pref?.setString(isLangSelectedKey, value);

  bool? get isLoggedIn => pref?.getBool(isLoggedInKey) ?? false;
  set isLoggedIn(value) => pref?.setBool(isLoggedInKey, value ?? false);

  bool? get isSetupProfileDone => pref?.getBool(isSetupProfileDoneKey) ?? false;
  set isSetupProfileDone(value) =>
      pref?.setBool(isSetupProfileDoneKey, value ?? false);

  String? get authToken => pref?.getString(authTokenKey) ?? "";
  set authToken(value) => pref?.setString(authTokenKey, value ?? "");

  //
  // setUserToken(UserM user) async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   sp.setInt('user_id', user.id!);
  //   sp.setString('user_token', "fdfds" ?? user.accessToken.toString());
  //   sp.setString('user_name', user.username.toString());
  //   sp.setString('user_image', user.image.toString());
  //   sp.setString('user_email', user.email.toString());
  // }
  //
  // static Future<dynamic> getUserToken() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //
  //   String? userToken = "vdfvds";
  //   return userToken;
  // }

  //
  // static Future<UserM> getUser() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //
  //   int? userId = sp.getInt('user_id');
  //   String? userToken = sp.getString('user_token');
  //   String? userName = sp.getString('user_name');
  //   String? userImage = sp.getString('user_image');
  //   String? userEmail = sp.getString('user_email');
  //
  //   return UserM(
  //     id: userId,
  //     accessToken: userToken,
  //     username: userName,
  //     email: userEmail,
  //     image: userImage,
  //   );
  // }
  //
  // Future<dynamic> getMyId() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //
  //   int? userId = sp.getInt('user_id');
  //   return userId;
  // }
  //
  // removeToken() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   sp.remove('user_id');
  //   sp.remove('user_token');
  //   sp.remove('user_name');
  //   sp.remove('user_email');
  //   sp.remove('user_image');
  // }
}
