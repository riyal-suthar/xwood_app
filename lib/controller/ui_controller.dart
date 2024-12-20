import 'package:get/get.dart';

class UiController extends GetxController {
  // product count increment-decrement
  RxInt productCount = 1.obs;
  void ProductQuantityRemove() {
    if (productCount <= 1) {
      return;
    } else {
      productCount--;
    }
  }
  void ProductQuantityAdd() {
    productCount++;
  }

  // Mobile TextField => Country Code
  List<String> countrylist = ["Uk", "USA", "India"];
  var _selected = "Uk".obs;
  void selectCountryCode(var code){
    _selected = code;
  }


  // custom carousel index
  List<int> bannerlist = [0];
  RxInt currentPage = 0.obs;
  void autoChangePage() {
    if (currentPage < bannerlist.length) {
      currentPage++;
    } else {
      currentPage.value = 0;
    }
  }
}
