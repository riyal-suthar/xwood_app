import 'package:xwood/export.dart';
import 'package:xwood/screens/home_screen/widgets/carouselView_widget.dart';
import 'package:xwood/screens/product/widgets/quantity_count_widget.dart';
import 'package:xwood/screens/widgets/custom_elevated_button.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: px4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCarouselView(),
              gap24,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("data"), Icon(Icons.stacked_line_chart)],
              ),
              Text("data"),
              Text("data"),
              Divider(),
              CustomQuantityCount(),
              Divider(),
              Text("data"),
              Divider(),
              Text("data"),
              Divider(),
              Text("data"),
              Divider(),
              CustomElevatedButton(btnName: "Add to Cart"),
            ],
          ),
        ),
      ),
    );
  }
}
