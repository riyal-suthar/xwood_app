import 'package:flutter_svg/flutter_svg.dart';
import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/image_const_app.dart';
import 'package:xwood/export.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String? asset;
  final VoidCallback? trailGoToPage;
  const ProfileItem({super.key, required this.title, this.trailGoToPage, this.asset});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(asset ?? AppAssetsConst.search),
      title: Text(title, style: TextStyle(
        fontSize: 16,
        color: AppColorConst.kGrey300
    ),),
      titleTextStyle: TextStyle(
        fontSize: 16,
        color: AppColorConst.kGrey300,
      ),
      trailing: GestureDetector(
          onTap: trailGoToPage,
          child: Icon(Icons.navigate_next_sharp, color: AppColorConst.kGrey200,)),
    );
  }
}
