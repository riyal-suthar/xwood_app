import 'package:xwood/core/config/theme/theme.dart';

import 'export.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Geologica',
        brightness: AppMaterialTheme.lightScheme().brightness,
        colorScheme: AppMaterialTheme.lightScheme(),
        textTheme: TextTheme().apply(
          bodyColor: AppMaterialTheme.lightScheme().onSurface,
          displayColor: AppMaterialTheme.lightScheme().onSurface,
        ),
        canvasColor: AppMaterialTheme.lightScheme().surface,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Geologica',
        brightness: AppMaterialTheme.darkScheme().brightness,
        colorScheme: AppMaterialTheme.darkScheme(),
        canvasColor: AppMaterialTheme.darkScheme().surface,
      ),
      // home: CustomProductListView(),
      initialRoute: AppRoutes.profileScreen,
      getPages: AppRoutes.getPages,
    );
  }
}
