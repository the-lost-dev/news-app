import 'package:news_app/exports.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return Container(color: AppColors.primaryColor);
  }
}

      // appBar: const MainAppBar(title: 'Detail'),