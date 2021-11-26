import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/home.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  const ProviderScope(child: MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}