import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/home_page/home.dart';
import 'package:food_stuff/src/ui/home_detail_page/home_detail_viewmodel.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeDetailPage extends HookConsumerWidget {
  final int id;
  const HomeDetailPage({required this.id, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeDetailState = ref.watch(homeDetailProvider);

    useEffect(() {
      ref.read(homeDetailProvider.notifier).getItems(id);
    }, []);

    // final ResSearchDetail result;

    return Scaffold(
        appBar: AppBar(),
        body: homeDetailState.when(
          data: (data) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Text(data.title!),
                ],
              ),
            );
          },
          loading: () => const Loading(),
          error: (obj, trace) => ErrorWidget(obj),
        ));
  }
}
