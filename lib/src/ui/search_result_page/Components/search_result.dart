import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_stuff/src/data/model/res_search/res_search.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../search_result_viewmodel.dart';

class SearchResult extends HookConsumerWidget {
  const SearchResult({Key? key, required this.userSearch}) : super(key: key);
  final String userSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<List<Result>> listOfFoodItems = useState(List.empty());

    useEffect(() {
      ref.read(searchResultProvider.notifier).getItems().then((value) {
        listOfFoodItems.value = value.results;
      });
    }, []);
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

    return LoadingScreen(
      data: listOfFoodItems.value,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: StaggeredGridView.countBuilder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          itemCount: listOfFoodItems.value.length,
          itemBuilder: (BuildContext context, int index) => Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
                child: Image.network(
                  listOfFoodItems.value[index].image,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  listOfFoodItems.value[index].title,
                  textAlign: TextAlign.center,
                  style: kFoodNameFontStyle,
                ),
              ),
            ],
          ),
          staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
          mainAxisSpacing: 2,
          crossAxisSpacing: 16.0,
        ),
      ),
    );
  }
}
