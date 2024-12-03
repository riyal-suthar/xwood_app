import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/export.dart';

class ProductItem extends StatelessWidget {
  final bool grid;
  final int id;
  const ProductItem({super.key, this.grid = true, required this.id});

  @override
  Widget build(BuildContext context) {
    var url =
        "https://images.pexels.com/photos/2762247/pexels-photo-2762247.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
    if (grid) {
      return Column(children: [buildImageW(url), buildDetailsPW(context)]);
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: buildImageW(url)),
          Flexible(child: buildDetailsPW(context)),
        ],
      );
    }
  }

  Widget buildImageW(String url) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: NetworkImage(url, scale: 1.0),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildDetailsPW(context) {
    var fontTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Text(
                  "$id Vendor Name",
                  softWrap: true,
                  style: fontTheme.bodyMedium!.copyWith(
                    color: Color(0xff7A8183),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    // overflow: TextOverflow.visible,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "4.4",
                    style: fontTheme.bodySmall!.copyWith(
                      color: HexColor("#262A2B"),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(Icons.star, color: HexColor("#EDB31E")),
                ],
              ),
              // TextButton.icon(
              //   onPressed: () {},
              //   label: Icon(Icons.star, color: HexColor("#EDB31E")),
              //   icon: Text(
              //     "4.4",
              //     style: fontTheme.bodySmall!.copyWith(
              //       color: HexColor("#262A2B"),
              //       fontSize: 12,
              //       fontWeight: FontWeight.w400,
              //     ),
              //   ),
              // ),
            ],
          ),
          gapy6,
          Text(
            "Pashe Fabric Accent Chair",
            style: fontTheme.bodyMedium!.copyWith(
              color: HexColor("#0F1313"),
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
          gapy10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  "KWD 599",
                  style: fontTheme.bodyMedium!.copyWith(
                    color: HexColor("#0f1313"),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    // letterSpacing:
                  ),
                ),
              ),
              Flexible(
                child: Text(
                  "KWD 599",
                  style: fontTheme.bodyMedium!.copyWith(
                    color: HexColor("#7A8183"),
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Stack buildStack(BuildContext context, String url, TextTheme fontTheme) {
    return Stack(
      children: [
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Flexible(
              //   fit: FlexFit.tight,
              //   // flex: 1,
              //   child: ConstrainedBox(
              //     constraints: BoxConstraints(minHeight: 181, minWidth: 181),
              //     child: ClipRRect(
              //       borderRadius: BorderRadius.circular(10),
              //       child: Image.network(
              //         url,
              //         fit: BoxFit.cover,
              //         scale: 1.0,
              //       ),
              //     ),
              //   ),
              // ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(url, scale: 1.0),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              gapy17,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      "Vendor Name",
                      softWrap: true,
                      style: fontTheme.bodyMedium!.copyWith(
                        color: HexColor("#7A8183"),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        // overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "4.4",
                        style: fontTheme.bodySmall!.copyWith(
                          color: HexColor("#262A2B"),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(Icons.star, color: HexColor("#EDB31E")),
                    ],
                  ),
                  // TextButton.icon(
                  //   onPressed: () {},
                  //   label: Icon(Icons.star, color: HexColor("#EDB31E")),
                  //   icon: Text(
                  //     "4.4",
                  //     style: fontTheme.bodySmall!.copyWith(
                  //       color: HexColor("#262A2B"),
                  //       fontSize: 12,
                  //       fontWeight: FontWeight.w400,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              gapy6,
              Text(
                "Pashe Fabric Accent Chair",
                style: fontTheme.bodyMedium!.copyWith(
                  color: HexColor("#0F1313"),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              gapy10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "KWD 599",
                      style: fontTheme.bodyMedium!.copyWith(
                        color: HexColor("#0f1313"),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        // letterSpacing:
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "KWD 599",
                      style: fontTheme.bodyMedium!.copyWith(
                        color: HexColor("#7A8183"),
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Positioned(
        //   right: 5,
        //   top: 5,
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.favorite_border, color: Colors.grey.shade200),
        //   ),
        // ),
      ],
    );
  }
}
