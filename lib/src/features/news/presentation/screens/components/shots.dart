import 'package:news_app/exports.dart';

import 'shots_card.dart';

class Shots extends StatelessWidget {
  const Shots({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * AppSizes.p16,
      child: ListView.separated(
        padding: const EdgeInsets.only(
          left: AppSizes.p20,
          bottom: AppSizes.p30,
        ),
        itemCount: 3,
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        addSemanticIndexes: false,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => wSizedBox4,
        itemBuilder: (context, index) => const AnimatedScrollViewItem(
          child: Shotscard(),
        ),
      ),
    );
  }
}
