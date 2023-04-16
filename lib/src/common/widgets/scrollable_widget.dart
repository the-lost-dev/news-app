import 'package:news_app/exports.dart';

class ScrollableWidget extends StatelessWidget {
  const ScrollableWidget({
    super.key,
    required this.child,
    this.padding = AppSizes.p20,
  });

  final Widget child;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(padding),
        physics: const BouncingScrollPhysics(),
        child: child,
      ),
    );
  }
}
