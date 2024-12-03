import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/export.dart';

class TitleTextWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTappedPage;
  const TitleTextWidget({super.key, required this.title, this.onTappedPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pyb16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: HexColor("#0F1313"),
            ),
          ),
          TextButton(
            onPressed: onTappedPage,
            child: Text(
              "View All",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: HexColor("#95622D"),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
