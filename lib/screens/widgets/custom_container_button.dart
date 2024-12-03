import 'package:xwood/export.dart';
import 'package:flutter/foundation.dart';

class CustomElevatedButton extends StatefulWidget {
  final String nameOfButton;
  final bool isItDone;
  final bool blueColor;
  final bool isThatSignIn;
  final AsyncCallback onPressed;
  const CustomElevatedButton({
    Key? key,
    required this.isItDone,
    this.blueColor = true,
    this.isThatSignIn = false,
    required this.nameOfButton,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        return await widget.onPressed();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: widget.isThatSignIn ? 0 : 20,
        ),
        child: Container(
          margin: const EdgeInsetsDirectional.all(3.0),
          padding: EdgeInsetsDirectional.all(10),
          width: double.infinity,
          decoration: containerStyle(),
          child: widget.isItDone ? textOfButton() : circularProgress(),
        ),
      ),
    );
  }

  Padding textOfButton() {
    return Padding(
      padding: const EdgeInsetsDirectional.all(1.5),
      child: Center(child: Text(widget.nameOfButton)),
    );
  }

  Widget circularProgress() {
    return const Center(
      child: SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }

  BoxDecoration containerStyle() {
    return BoxDecoration(
      // color: !widget.blueColor
      //     ? ColorManager.lightBlue
      //     : (widget.isItDone ? ColorManager.blue : ColorManager.lightBlue),
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}
