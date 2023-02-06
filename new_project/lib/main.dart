import 'package:flutter/material.dart';
import 'package:new_project/screens/dropdown/dropdown.dart';
import 'package:new_project/screens/login_page.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:new_project/utils/routes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
        theme: ThemeData().copyWith(
            colorScheme: ThemeData()
                .colorScheme
                .copyWith(primary: AppColors.whiteColor)),
        home: const ElegantDropDown(),
        routes: Routes.registerRoutes(),
      );
    }));
  }
}
