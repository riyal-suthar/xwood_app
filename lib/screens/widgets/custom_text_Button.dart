import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/export.dart';

class CustomTextButton extends StatelessWidget {
  final String name;
  final VoidCallback? onTapped;
  const CustomTextButton({super.key, required this.name, this.onTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Text(name,style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: AppColorConst.kprimary,
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.solid,
      ),),
    );
  }
}
