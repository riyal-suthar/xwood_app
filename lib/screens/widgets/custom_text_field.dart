import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                floatingLabelBehavior: FloatingLabelBehavior.always,
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

class CustomMobileTextField extends StatelessWidget {
  final TextEditingController codeController;
  final TextEditingController mobileNoController;
  final countryCodeValidation;
  final mobileNoValidation;
  final bool obscure;
  final TextInputType? keyboard;
  CustomMobileTextField({super.key, this.obscure = false, this.keyboard, required this.codeController, required this.mobileNoController, this.countryCodeValidation, this.mobileNoValidation});

  List<String> countrylist = ["Uk", "USA", "India"];
  var _selected = "Uk".obs;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        SizedBox(
          width: 100,
          child: TextFormField(
            style: TextStyle(color: Colors.red, fontSize: 16),
            controller: codeController,
            obscureText: obscure,
            keyboardType: keyboard,
            validator: countryCodeValidation,
            decoration: InputDecoration(
              // label: Text(" 965"),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: " 965",
               contentPadding: ptf16_10,
                border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade200),
                borderRadius: const BorderRadius.all(radius10),
                ),
          ),
                  ),
        ),
        gapx8,
        Expanded(
          child: TextFormField(
            style: TextStyle(color: Colors.red, fontSize: 16),
            controller: mobileNoController,
            obscureText: obscure,
            keyboardType: keyboard,
            validator: mobileNoValidation,
            decoration: InputDecoration(
              hintText: "Enter Mobile Number",
              floatingLabelBehavior: FloatingLabelBehavior.always,
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
    );
  }

  DropdownButtonFormField<Object> buildDropdownButtonFormField() {
    return DropdownButtonFormField(
          items:
          countrylist.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          value: _selected,
          onChanged: (val) {
            _selected.value = val.toString();
          },
          validator: (value) {
            if (value == null) {
              return 'Please select an country code';
            }
            return null;
          },
        );
  }
}
