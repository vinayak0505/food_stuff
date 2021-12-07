import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/random_recipe/random_recipe.dart';
import 'package:food_stuff/src/utils/constants.dart';

class ViewPager extends HookWidget {
  const ViewPager(this.randomFood, {Key? key}) : super(key: key);

  final List<Recipe> randomFood;

  @override
  Widget build(BuildContext context) {
    String foodTitle = randomFood[0].title ?? '';
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
        child: Container(
          color: Colors.lightBlue,
          child: Column(
            children: [
              Image.network(
                randomFood[0].image ?? '',
                fit: BoxFit.scaleDown,
              ),
              Text(
                foodTitle,
                textAlign: TextAlign.center,
                style: kTitleFontsStyle,
              ),
            ],
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
