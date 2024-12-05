import 'package:xwood/core/utils/constants/lable_name_const.dart';
import 'package:xwood/export.dart';
import 'package:xwood/screens/widgets/custom_appbar.dart';
import 'package:xwood/screens/widgets/custom_elevated_button.dart';
import 'package:xwood/screens/widgets/custom_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  final _fullNameController = TextEditingController();
  final _countryCodeController = TextEditingController();
  final _mobileNoController = TextEditingController();
  final _emailController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.appbarName(title: AppLables.editProfile),
      body: Column(
        children: [
          CustomTextField(controller: _fullNameController, title: AppLables.fullName,),
          CustomMobileTextField(codeController: _countryCodeController, mobileNoController: _mobileNoController),
          CustomTextField(controller: _emailController, title: AppLables.email,),
          Align(alignment: Alignment.bottomCenter,child: CustomElevatedButton(btnName: AppLables.update)),
        ],
      ),
    );
  }
}
