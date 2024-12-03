import 'package:xwood/controller/ui_controller.dart';
import 'package:xwood/export.dart';
import 'package:flutter/cupertino.dart';

class CustomQuantityCount extends GetView<UiController> {
  CustomQuantityCount({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UiController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Quantity"),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: controller.ProductQuantityRemove,
                icon: Icon(CupertinoIcons.minus_square_fill),
              ),
              Text(controller.productCount.toString()),
              IconButton(
                onPressed: controller.ProductQuantityAdd,
                icon: Icon(CupertinoIcons.plus_square_fill),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
