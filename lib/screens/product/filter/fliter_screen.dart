import 'package:xwood/screens/home_screen/home_screen.dart';
import 'package:xwood/screens/product/category_screen.dart';
import 'package:flutter/foundation.dart';

import '../../../export.dart';

class ProductFilterScreen extends StatelessWidget {
  ProductFilterScreen({super.key});

  ValueNotifier<int> _page = ValueNotifier(0);
  List<Widget> _listPages = [CategoryScreen(), HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filter Screen")),
      body: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: ListView.separated(
              itemCount: _listPages.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _page.value = index;
                  },
                  child: Text(index.toString()),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
          ),
          Flexible(
            flex: 8,
            child: ValueListenableBuilder(
              valueListenable: _page,
              builder: (BuildContext context, value, Widget? child) {
                return Material(child: _listPages[value]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
