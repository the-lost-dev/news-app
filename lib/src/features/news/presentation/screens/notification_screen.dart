import 'package:news_app/exports.dart';

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const MainAppBar(title: AppStrings.notifications),
      body: ScrollableWidget(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
