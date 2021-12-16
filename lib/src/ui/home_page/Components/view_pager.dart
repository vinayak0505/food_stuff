import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/ui/home_detail_page/home_detail_page.dart';
import 'package:food_stuff/src/ui/widgets/image.dart';
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
          onDragEnd: (drag) => onDrag.call(),
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
    return Center(
      child: GestureDetector(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
          child: Container(
            constraints: const BoxConstraints(maxWidth:600, minWidth: 320),
            width: (isDragging) ? 320 : double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                CustomImage(imageUrl: listOfFoodItems.image ?? '', fit: BoxFit.fill),
                Container(
                  width: 300,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(listOfFoodItems.title ?? '',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: kTitleFontsStyle),
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return HomeDetailPage(
                id: listOfFoodItems.id,
              );
            }));
        },
      ),
    );
  }
}