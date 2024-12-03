import 'package:flutter/material.dart';

class ProductPriceFilterScreen extends StatelessWidget {
  const ProductPriceFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Text("data"),
          RangeSlider(values: RangeValues(0, 1), onChanged: (c) {}),
        ],
      ),
    );
  }
}
