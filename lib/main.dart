import 'package:catalog/pages/home_page.dart';
import 'package:catalog/pages/login_page.dart';
import 'package:catalog/utils/routes.dart';
import 'package:catalog/widgets/theam.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheam.lightTheme(context),
      darkTheme: MyTheam.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRout,
      routes: {

        "/": (context) =>Loginpage(),
        MyRoutes.homeRout: (context) => Homepage(),
        MyRoutes.loginRout: (context) => Loginpage(),
      },
    );
  }
}
