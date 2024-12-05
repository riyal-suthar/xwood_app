import 'package:xwood/data/shared_pref.dart';
import 'package:xwood/my_app.dart';

import 'export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefService.getInstance();
  runApp(const MyApp());
}

