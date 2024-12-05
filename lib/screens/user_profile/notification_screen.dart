import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/lable_name_const.dart';
import 'package:xwood/export.dart';
import 'package:xwood/screens/widgets/custom_appbar.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  String title = "Your order has been delivered.";
  String time = "24 minutes ago";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.appbarName(title: AppLables.notificationsLabel),
      body: ListView.builder(itemCount: 10,
          itemBuilder: (context, index){
        return ListTile(
          leading: Icon(Icons.circle_notifications),
          title: RichText(
            text:  TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: TextStyle(
                    color: AppColorConst.kGrey400,
                  ),
                ),
                TextSpan(
                  text: time,
                  style: TextStyle(
                    color: AppColorConst.kGrey200,
                  ),
                ),
              ],
            ),
          ),
        );
          }),
    );
  }
}
