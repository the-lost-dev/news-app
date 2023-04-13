import 'package:news_app/exports.dart';

class ScrollableWidget extends StatelessWidget {
  const ScrollableWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.p20),
        physics: const BouncingScrollPhysics(),
        child: child,
      ),
    );
  }
}
