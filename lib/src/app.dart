import 'package:news_app/exports.dart';

class NewsApp extends ConsumerWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: router,
      title: AppStrings.newsApp,
      debugShowCheckedModeBanner: false,
      restorationScopeId: AppStrings.newsApp,
      theme: NewsAppTheme.pandascrowLightTheme,
    );
  }
}
