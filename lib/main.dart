import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/home_page/home.dart';
import 'package:food_stuff/src/ui/home_page/home_page.dart';
import 'package:food_stuff/src/ui/login_page.dart';
import 'package:food_stuff/src/ui/widgets/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:food_stuff/src/utils/routes.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyHomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
