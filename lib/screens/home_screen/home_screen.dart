import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/screens/widgets/custom_elevated_button.dart';
import 'package:xwood/screens/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xwood/core/config/routes/app_routes.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';
import 'package:xwood/screens/home_screen/widgets/carouselView_widget.dart';
import 'package:xwood/screens/home_screen/widgets/product_list.dart';
import 'package:xwood/screens/home_screen/widgets/title_text_widget.dart';
import 'package:xwood/screens/product/widgets/category_item.dart';
import 'package:xwood/screens/product/widgets/product_item.dart';
import 'package:xwood/screens/widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar.buildAppBar(
        title: "xwood",
        action: logOutButton(context),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: px24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              // custom carousel view
              CustomCarouselView(),

              // categories
              TitleTextWidget(
                title: 'Categories',
                onTappedPage: () {
                  customBottomSheet(context);
                },
              ),
              buildCategoryItems(context),

              // custom list => product
              TitleTextWidget(title: "Popular Products", onTappedPage: () {}),
              Center(child: CustomProductListView()),
            ],
          ),
        ),
      ),
    );
  }

  void onListView() {
    // Get.to(CustomProductListView());
  }

  Widget logOutButton(context) {
    return GestureDetector(
      onTap: () {
        customDialogBox(context);
      },
      child: Icon(Icons.logout),
    );
  }

  customDialogBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'LogOut',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text('Sure, to Logout', style: TextStyle(fontSize: 16.0)),
                SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                    ),
                    TextButton(
                      child: Text('LogOut'),
                      onPressed: () {
                        Navigator.of(context).pop(true);
                        Get.toNamed(AppRoutes.splashScreen);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  customBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          width: 700,
          child: Padding(
            padding: px24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 4,
                  width: 30,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200,
                  ),
                ),
                gapy17,
                Icon(
                  Icons.error_outline,
                  color: HexColor("#E54747"),
                  size: 67.0,
                ),
                Text("Delete Account"),
                Text(
                  "Are you sure want to delete your account permanently You will not retrieve your data back",
                ),
                SizedBox(height: 48),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 20.0,
                    children: [
                      CustomElevatedButton(
                        btnName: "Cancel",
                        btnBGColor: AppColorConst.primary,
                        onPressed: () {
                          print("object");
                        },
                      ),
                      CustomOutlinedButton(
                        btnName: "Delete",
                        btnColor: HexColor("#FFEBEB"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  GridView buildGridView() {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 100,
      primary: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .60,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return ProductItem(id: index);
      },
    );
  }

  SizedBox buildCategoryItems(BuildContext context) {
    return SizedBox(
      height: 108,
      width: MediaQuery.of(context).size.width - 10,
      child: ListView.builder(
        prototypeItem: Text("please wait..."),
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return CategoryItem();
        },
      ),
    );
  }

  void ontapListView() => Get.to(() => CustomProductListView());
}
