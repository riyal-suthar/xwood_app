import 'package:xwood/core/utils/constants/colors_const_app.dart';

import '../../export.dart';

class CustomPageTitleText extends StatelessWidget {
  final String title;
  final String? subtitle;
  const CustomPageTitleText({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: HexColor("#0F1313"),
          ),
        ),
        if (subtitle != null && subtitle != "")
          Text(
            subtitle!,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: HexColor("#474747"),
            ),
          ),
      ],
    );
  }
}
