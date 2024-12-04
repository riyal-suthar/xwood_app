import 'package:flutter/material.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';
import 'package:xwood/screens/product/widgets/product_item.dart';

class CustomProductListView extends StatefulWidget {
  const CustomProductListView({super.key});

  @override
  State<CustomProductListView> createState() => _CustomProductListViewState();
}

class _CustomProductListViewState extends State<CustomProductListView> {
  List<int> list = List.generate(5, (i) => i);

  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width - 56)/2 ;
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: (list.length / 2).round(),
          itemBuilder: (cnt, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: width, child: ProductItem(id: index * 2)),
                  gapx20,
                  if (index * 2 + 1 < list.length)
                    SizedBox(
                      width: width,
                      child: ProductItem(id: (index * 2) + 1),
                    )
                  else
                    SizedBox.shrink(),
                ],
              ),
            );
          },
        ),
        TextButton(
          child: Text("data"),
          onPressed: () {
            list.add(15);
            setState(() {});
          },
        ),
      ],
    );
  }
}
