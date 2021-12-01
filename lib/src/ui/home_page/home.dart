import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/res_search.dart';
import 'package:food_stuff/src/ui/home_detail_page/home_detail.dart';
import 'package:food_stuff/src/ui/home_page/home_viewmodel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeProvider);
    var screenSize = MediaQuery.of(context).size;

    useEffect(() {
      ref.read(homeProvider.notifier).getItems();
    }, []);

    return Scaffold(
        appBar: AppBar(
          title: Text('new home screen $screenSize'),
        ),
        body: homeState.when(
          data: (data) {
            return GridView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) =>
                    GridTile(child: Tile(result: data[index])),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: screenSize.width ~/ 202.0));
          },
          loading: () => const Loading(),
          error: (obj, trace) => ErrorWidget(obj),
        ));
  }
}

class Tile extends StatelessWidget {
  const Tile({Key? key, required this.result}) : super(key: key);
  final Result result;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomeDetailPage(
                      id: result.id,
                    )));
      },
      child: Card(
        child: Column(
          children: [Image.network(result.image), Text(result.title)],
        ),
      ),
    );
  }
}

class Loading extends HookWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).colorScheme;

    return Container(
      color: Colors.transparent,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(appColors.primary),
        ),
      ),
    );
  }
}
