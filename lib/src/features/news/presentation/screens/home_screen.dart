import 'package:news_app/exports.dart';

import 'components/categories.dart';
import 'components/custom_text_field.dart';
import 'components/news_articles.dart';
import 'components/profile_date_widget.dart';
import 'components/shots.dart';
import 'components/view_all_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return ScrollableWidget(
      padding: AppSizes.p0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          hSizedBox2,
          const ProfileDateWidget(),
          hSizedBox4,
          CustomTextField(onchanged: (text) => null),
          hSizedBox4,
          const Categories(),
          const NewsArticles(),
          hSizedBox4,
          const ViewAllWidget(),
          hSizedBox4,
          const Shots(),
        ],
      ),
    );
  }
}
