import 'package:flutter/material.dart';
import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';

class CustomElevatedButton extends StatelessWidget {
  final String btnName;
  final VoidCallback? onPressed;
  final bool disable;
  final Color? btnBGColor;
  final Color? btnFGColor;
  final bool? btnEnable;
  const CustomElevatedButton({
    super.key,
    required this.btnName,
    this.onPressed,
    this.btnBGColor,
    this.btnFGColor,
    this.btnEnable,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: btnFGColor ?? Colors.white,
          backgroundColor: btnBGColor ?? AppColorConst.primary,
          fixedSize: Size(500, 52),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: onPressed,
        child: Text(btnName),
      ),
    );
  }
}
