import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/image_const_app.dart';
import 'package:xwood/core/utils/constants/lable_name_const.dart';
import 'package:xwood/export.dart';
import 'package:xwood/screens/cms_webview/cms_webview_screen.dart';
import 'package:xwood/screens/user_profile/widgets/profile_list_item_widget.dart';
import 'package:xwood/screens/widgets/custom_appbar.dart';
import 'package:xwood/screens/widgets/custom_outlined_button.dart';
import 'package:xwood/screens/widgets/custom_text_Button.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final _tc = '''<a href="https://www.w3schools.com/"></a>''';
  String _tcNmae = "Terms & Condition";
  String _rpNmae = "Terms & Condition";
  final _rp = '''<a href="https://pub.dev/packages/flutter_widget_from_html">Visit W3Schools.com!</a>''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.appbarName(title: AppLables.profile),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColorConst.kprimary,
                ),
                child: Stack(children: [
                  SvgPicture.asset(AppAssetsConst.plantTable),
                  ListTile(
                    tileColor: AppColorConst.kprimary,
                    trailing: SvgPicture.asset(AppAssetsConst.plantTable),
                    title: Text(AppLables.welcome),
                    subtitle: Text(AppLables.nameLabel),
                  )])),
            ProfileItem(title: AppLables.myOrders, asset: AppAssetsConst.icMyOrders,),
            ProfileItem(title: AppLables.myAddress, asset: AppAssetsConst.icMyAddress,),
            ProfileItem(title: AppLables.returnAndRefund, asset: AppAssetsConst.icReturnRefund,),
            ProfileItem(title: AppLables.myReviews, asset: AppAssetsConst.icMyReviews,),
            ProfileItem(title: AppLables.changeLanguage, asset: AppAssetsConst.icChangeLanguage,),
            Divider(
              color: AppColorConst.kGrey100,
              height: 4,
            ),
            ProfileItem(title: AppLables.aboutUs, asset: AppAssetsConst.icAboutUs,),
            ProfileItem(title: AppLables.termsAndConditions, asset: AppAssetsConst.icTermsConditions, trailGoToPage: () =>cmsWebview(link: _tc),),
            ProfileItem(title: AppLables.returnPolicy, asset: AppAssetsConst.icReturnPolicy, trailGoToPage: () => cmsWebview(link: _rp),),
            ProfileItem(title: AppLables.shippingPolicy, asset: AppAssetsConst.icShippingPolicy,),
            ProfileItem(title: AppLables.faqs, asset: AppAssetsConst.icFaq,),
            ProfileItem(title: AppLables.contactUs, asset: AppAssetsConst.icContactMail,),


            HtmlWidget(_tc),


            Padding(
              padding: px24,
              child: CustomOutlinedButton(btnName: "Logout", ),
            ),
            gapy16,
            CustomTextButton(name: AppLables.deleteAccount, onTapped: (){},),
            gap12,
            Text(AppLables.appVersion),
        
          ],
        ),
      ),
    );
  }

  cmsWebview({required String link}) => Get.to(()=>CmsWebviewScreen(link: link,));
}
