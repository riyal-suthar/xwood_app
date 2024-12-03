import 'package:flutter/material.dart';

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
    return Flexible(
      child: OutlinedButton(
        onPressed: btnPressed,
        child: Text(btnName),
        style: OutlinedButton.styleFrom(
          backgroundColor: btnColor,
          fixedSize: Size(500, 52),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
