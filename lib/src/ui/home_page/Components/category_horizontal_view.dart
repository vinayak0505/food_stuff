import 'package:flutter/material.dart';
import 'package:food_stuff/src/utils/constants.dart';

//class CategoryHorizontalView extends StatelessWidget {
//   const CategoryHorizontalView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     String image = 'https://en.pimg.jp/062/142/310/1/62142310.jpg';
//     return SizedBox(
//       height: 200,
//       child: ListView.builder(
//         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         itemCount: 20,
//         itemBuilder: (context, index) => Column(
//           children: [
//             Container(
//               width: kScreenWidth(context) / 2.5,
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: ClipRRect(
//                 borderRadius: const BorderRadius.all(
//                   Radius.circular(16.0),
//                 ),
//                 child: Image.network(
//                   image,
//                   fit: BoxFit.fitHeight,
//                 ),
//               ),
//             ),
//             const Center(
//               child: Text(
//                 'Food very tasty',
//                 style: kFoodNameFontStyle,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
