import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/model/random_recipe/random_recipe.dart';
import '../../../utils/constants.dart';
import '../../widgets/loading_screen.dart';
import '../home_viewmodel.dart';

class ViewPager extends HookConsumerWidget {
  const ViewPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<List<Recipe>?> _listOfFoodItems = useState(null);
    final ValueNotifier<List<Widget>> cardList = useState(List.empty());
    swipeCard() {
      final newList = _listOfFoodItems.value;
      final temp = _listOfFoodItems.value![0];
      newList!.removeAt(0);
      newList.add(temp);
      _listOfFoodItems.value = newList;
      cardList.value = _getCards(newList, swipeCard);
    }

    useEffect(() {
      ref.read(homeProvider.notifier).getRandomRecipe().then((value) {
        _listOfFoodItems.value = value.recipes;
        cardList.value = _getCards(value.recipes, swipeCard);
      });
    }, []);

    return LoadingScreen(
      data: _listOfFoodItems.value,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          child: Stack(
            children: cardList.value,
          ),
        ),
      ),
    );
  }

  List<Widget> _getCards(List<Recipe> cards, Function() onDrag) {
    if (cards.isEmpty) return List.empty();
    List<Widget> cardList = List.empty(growable: true);

    for (int x = 2; x >= 0; x--) {
      cardList.add(Positioned(
        // top: (3 - x) * 10,
        // right: (x) * 10,
        child: Draggable(
          onDragEnd: (drag) {
             onDrag.call();
          },
          childWhenDragging: const SizedBox(),
          feedback: HomeCard(listOfFoodItems: cards[x],isDragging: true),
          child: HomeCard(listOfFoodItems: cards[x]),
        ),
      ));
    }

    return cardList;
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    this.isDragging = false,
    required this.listOfFoodItems,
  }) : super(key: key);

  final Recipe listOfFoodItems;
  final bool isDragging;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
      child: Container(
        width: (isDragging)?320:double.infinity,
        color: Colors.lightBlue,
        child: Column(
          children: [
            Image.network(
              listOfFoodItems.image ?? '',
              fit: BoxFit.fill,
            ),
            Text(
              listOfFoodItems.title ?? '',
              textAlign: TextAlign.center,
              maxLines: 1,
              style: const TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}

// class ViewPager extends StatefulWidget {
//   const ViewPager({Key? key}) : super(key: key);
//
//   @override
//   _ViewPagerState createState() => _ViewPagerState();
// }
//
// class _ViewPagerState extends State<ViewPager> {

//
//   List selectedInterests = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           color: const Color.fromRGBO(36, 43, 47, 1),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               _buildTitle(),
//               _buildInterestsPageView(), //_buildInterestsContent(),
//               // _buildCheckIcon(),
//               // _buildNextButton()
//             ],
//           )),
//     );
//   }
//
//   Text _buildTitle() {
//     return Text(
//       "Choose your interests".toUpperCase(),
//       textAlign: TextAlign.center,
//       style: const TextStyle(
//         color: Color.fromRGBO(243, 243, 243, 1),
//         fontSize: 19,
//       ),
//     );
//   }
//
//   PageController pageController =
//       PageController(viewportFraction: 0.45, initialPage: 1);
//
//   Container _buildInterestsPageView() {
//     return Container(
//       height: 210,
//       // width: 200,
//       child: PageView.builder(
//         itemBuilder: (context, int currentIdx) {
//           int crt = currentIdx;
//           if (crt > 2) {
//             if (crt % 3 == 0) {
//               crt = 0;
//             } else if ((crt + 1) % 3 == 0) {
//               crt = 2;
//             } else if ((crt - 1) % 3 == 0) {
//               crt = 1;
//             }
//           }
//           return Container(
//             margin: const EdgeInsets.only(top: 31.0),
//             child: _buildPageViewItem(foodImageList[crt], crt),
//           );
//         },
//         controller: pageController,
//       ),
//     );
//   }
//
//   GestureDetector _buildPageViewItem(ImageModel data, int crt) {
//     // final String backgroundAsset = active
//     //     ? 'assets/bg_yellow_bordered.png'
//     //     : 'assets/bg_gray_bordered.png';
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           if (selectedInterests.contains(crt)) {
//             selectedInterests.remove(crt);
//           } else {
//             selectedInterests.add(crt);
//           }
//         });
//       },
//       child: Column(
//         children: <Widget>[
//           Text(data.title.toUpperCase(),
//               style: const TextStyle(
//                 color: Color.fromRGBO(243, 243, 243, 1),
//                 fontSize: 11.0,
//               )),
//           SizedBox(
//               height: 129,
//               width: 129,
//               child: Container(
//                 margin: const EdgeInsets.only(top: 5),
//                 // decoration: BoxDecoration(
//                 //     image: DecorationImage(image: AssetImage(backgroundAsset))),
//                 child: Image.network(data.image),
//               )),
//         ],
//       ),
//     );
//   }
// }
