import 'package:flutter/material.dart';
import 'package:xwood/core/utils/constants/colors_const_app.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String btnName;
  final VoidCallback? btnPressed;
  final Color? btnColor;

  const CustomOutlinedButton({
    super.key,
    required this.btnName,
    this.btnPressed,
    this.btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: btnPressed,

      style: OutlinedButton.styleFrom(
        backgroundColor: btnColor,
        fixedSize: Size(300, 52),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColorConst.kprimary),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(btnName, style: const TextStyle(
          color: AppColorConst.kprimary,
          fontSize: 16
      ),),
    );
  }
}
