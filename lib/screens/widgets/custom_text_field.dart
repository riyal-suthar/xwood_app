import 'package:flutter/material.dart';
import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';

class CustomTextField extends StatelessWidget {
  final int flex;
  final String title;
  final double? btnWidth;
  final String? lable;
  final TextEditingController controller;
  final VoidCallback? onTapped;
  final String? hint;
  final validation;
  final bool obscure;
  final TextInputType? keyboard;

  const CustomTextField({
    super.key,
    this.lable,
    required this.controller,
    this.hint,
    this.obscure = false,
    this.onTapped,
    this.keyboard,
    this.validation,
    this.title = "",
    this.flex = 1,
    this.btnWidth,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Flexible(
      fit: FlexFit.loose,
      flex: flex,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != "")
            Text(title, style: TextStyle(color: AppColorConst.scrim)),
          if (title != "") gapy6,
          SizedBox(
            height: 44,
            width: btnWidth,
            child: TextFormField(
              // initialValue: "124",
              style: TextStyle(color: Colors.red, fontSize: 16),
              controller: controller,
              onTap: onTapped,
              obscureText: obscure,
              keyboardType: keyboard,
              validator: validation,
              decoration: InputDecoration(
                label: Text(hint ?? ""),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: hint ?? "no hint",
                contentPadding: ptf16_10,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200),
                  borderRadius: const BorderRadius.all(radius10),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
