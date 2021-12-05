import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_stuff/src/utils/constants.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List imageList = [
      'https://media.smallbiztrends.com/2021/05/fast-food-restaurants.png',
      'https://www.qsrmagazine.com/sites/default/files/styles/slideshow_image/public/slideshow-images/slides/mcdonaldsglobal.jpg?itok=X8uup3iY',
      'https://st.depositphotos.com/1005682/2476/i/600/depositphotos_24762569-stock-photo-fast-food-hamburger-hot-dog.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/7/7a/Domino%27s_Pizza_-_20191105.jpg',
      'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/pjyrruezbzofdtomlzpi',
      'https://media.smallbiztrends.com/2021/05/fast-food-restaurants.png',
      'https://www.qsrmagazine.com/sites/default/files/styles/slideshow_image/public/slideshow-images/slides/mcdonaldsglobal.jpg?itok=X8uup3iY',
      'https://st.depositphotos.com/1005682/2476/i/600/depositphotos_24762569-stock-photo-fast-food-hamburger-hot-dog.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/7/7a/Domino%27s_Pizza_-_20191105.jpg',
      'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/pjyrruezbzofdtomlzpi',
      'https://media.smallbiztrends.com/2021/05/fast-food-restaurants.png',
      'https://www.qsrmagazine.com/sites/default/files/styles/slideshow_image/public/slideshow-images/slides/mcdonaldsglobal.jpg?itok=X8uup3iY',
      'https://st.depositphotos.com/1005682/2476/i/600/depositphotos_24762569-stock-photo-fast-food-hamburger-hot-dog.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/7/7a/Domino%27s_Pizza_-_20191105.jpg',
      'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/pjyrruezbzofdtomlzpi',
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: StaggeredGridView.countBuilder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) => Column(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
                  child: Image.network(
                    imageList[index],
                    fit: BoxFit.contain,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    'Food very tasty',
                    textAlign: TextAlign.center,
                    style: kFoodNameFontStyle,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text('Under 30 min'),
                ),
              ],
            ),
          ],
        ),
        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
        mainAxisSpacing: 2,
        crossAxisSpacing: 16.0,
      ),
    );
  }
}
