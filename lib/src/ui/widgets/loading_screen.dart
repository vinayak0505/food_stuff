import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key, required this.data, required this.child})
      : super(key: key);

  final Widget child;
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    print('---------------------------------$data');

    // final ValueNotifier<dynamic> fakeData = useState(data);

    // if (data != null) fakeData.value = [1, 1];

    return (data == null)
        ? const Center(child: CircularProgressIndicator())
        : child;
  }
}
