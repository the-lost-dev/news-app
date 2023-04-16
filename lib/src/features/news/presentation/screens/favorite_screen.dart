import 'package:news_app/exports.dart';

class FavoriteScreen extends ConsumerWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const MainAppBar(title: AppStrings.favorite),
      body: ScrollableWidget(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
