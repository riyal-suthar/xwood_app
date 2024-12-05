import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/image_const_app.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';

class CmsWebviewScreen extends StatefulWidget {
  final String link;
  final String? linkName;
  const CmsWebviewScreen({super.key, required this.link, this.linkName});

  @override
  State<CmsWebviewScreen> createState() => _CmsWebviewScreenState();
}

class _CmsWebviewScreenState extends State<CmsWebviewScreen> {
  bool _enabled = true;
  String currentText = "";
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.delayed(delay2, (){
      _enabled = false;
      setState(() {
      });
    });

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HtmlWidget("CMS Webview"),
      ),
      body: buildSingleChildScrollView(context),
      // body: HtmlWidget(
      //   "open",
      //   baseUrl: Uri.http("www.w3schools.com"),
      //   onTapUrl: (v){
      //     print(v.toString());
      //     return true;
      //   },
      // ),
    );
  }

  SingleChildScrollView buildSingleChildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PinCodeTextField(
            appContext: context,
            autoDisposeControllers: false,
            pastedTextStyle: TextStyle(
              color: AppColorConst.kprimary,
              fontWeight: FontWeight.bold,
            ),
            length: 4,
            obscureText: true,
            obscuringCharacter: '*',
            obscuringWidget: const FlutterLogo(
              size: 24,
            ),
            blinkWhenObscuring: true,
            animationType: AnimationType.fade,
            validator: (v) {
              if (v!.length < 3) {
                return "I'm from validator";
              } else {
                return null;
              }
            },
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
              activeFillColor: Colors.white,
            ),
            cursorColor: Colors.black,
            animationDuration: const Duration(milliseconds: 300),
            enableActiveFill: true,
            // errorAnimationController: errorController,
            controller: _controller,
            keyboardType: TextInputType.number,
            boxShadows: const [
              BoxShadow(
                offset: Offset(0, 1),
                color: Colors.black12,
                blurRadius: 10,
              )
            ],
            onCompleted: (v) {
              debugPrint("Completed");
            },
            onChanged: (value) {
              debugPrint(value);
              setState(() {
                currentText = value;
              });
            },
            beforeTextPaste: (text) {
              debugPrint("Allowing to paste $text");
                return true;
            },
          ),
          HtmlWidget(
            '<img src=${AppAssetsConst.chair} alt="SVG Image">',
          ),
          HtmlWidget(
            widget.link,
          onTapUrl: (v){
           print("link i => $v");
           return  false;
          },
          ),

          Skeletonizer(
              enabled: _enabled,
              enableSwitchAnimation: true,
              child: HtmlWidget("Hello !"))
        ],
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print('Cannot launch URL');
    }
  }
}
