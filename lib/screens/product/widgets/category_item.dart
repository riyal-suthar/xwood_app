import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/lable_name_const.dart';
import 'package:xwood/export.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              color: AppColorConst.kGrey100,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onPressed: () {},
              icon: Icon(Icons.chair, color: AppColorConst.kGrey300,),
            ),
          ),
          gapy6,
          Text(AppLables.category),
        ],
      ),
    );
  }
}
