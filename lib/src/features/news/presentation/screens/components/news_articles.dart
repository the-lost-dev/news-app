import 'package:news_app/exports.dart';

import 'news_card.dart';

class NewsArticles extends StatelessWidget {
  const NewsArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * AppSizes.p46,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: AppSizes.p20),
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
          child: NewsCard(),
        ),
      ),
    );
  }
}
