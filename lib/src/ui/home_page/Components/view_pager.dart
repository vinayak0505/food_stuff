import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/random_recipe/random_recipe.dart';
import 'package:food_stuff/src/ui/home_page/home_viewmodel.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewPager extends HookConsumerWidget {
  const ViewPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<List<Recipe>?> _listOfFoodItems = useState(null);

    useEffect(() {
      ref.read(homeProvider.notifier).getRandomRecipe().then((value) {
        _listOfFoodItems.value = value.recipes;
      });
    }, []);

    return LoadingScreen(
      data: _listOfFoodItems.value,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
          child: Container(
            color: Colors.lightBlue,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Image.network(
                      _listOfFoodItems.value?[0].image ?? '',
                      fit: BoxFit.scaleDown,
                    ),
                    _listOfFoodItems.value?[0].vegetarian == true ? Container(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ): const SizedBox(),
                  ],
                ),
                Text(
                  _listOfFoodItems.value?[0].title ?? '',
                  textAlign: TextAlign.center,
                  style: kTitleFontsStyle,
                ),
              ],
            ),
          ),
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
