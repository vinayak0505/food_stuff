import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/home_page/home_page.dart';
import 'package:food_stuff/src/ui/search_page/search_page.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:food_stuff/src/ui/widgets/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:food_stuff/src/utils/routes.dart';

void main() {
  setPathUrlStrategy();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.searchRoute: (context) => const SearchPage(),
      },
    );
  }
}
