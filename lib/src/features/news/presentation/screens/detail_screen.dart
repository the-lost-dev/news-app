import 'package:news_app/exports.dart';

import 'components/article.dart';
import 'components/article_headline.dart';
import 'components/detail_bottom_nav.dart';

class DetailScreen extends ConsumerWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const MainAppBar(title: AppStrings.detail),
      bottomNavigationBar: const DetailBottomNav(),
      body: ScrollableWidget(
        child: Column(
          children: [const ArticleHeadline(), hSizedBox4, const Article()],
        ),
      ),
    );
  }
}
