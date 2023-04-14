import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:news_app/exports.dart';

import 'tile.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: GridView.custom(
            physics: const BouncingScrollPhysics(),
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 4,
              mainAxisSpacing: AppSizes.p8,
              crossAxisSpacing: AppSizes.p8,
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: const [
                QuiltedGridTile(2, 2),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 2),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => Tile(
                index: index,
              ),
              childCount: onboardImageList.length,
            ),
          ),
        ),
        hSizedBox6,
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: AppSizes.p24,
              ),
          textAlign: TextAlign.center,
        ),
        hSizedBox2,
        Text(
          subtitle,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.grey250,
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
