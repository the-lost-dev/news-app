import 'package:news_app/exports.dart';

class Tile extends StatelessWidget {
  const Tile({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.p10),
      child: Image.asset(onboardImageList[index], fit: BoxFit.cover),
    );
  }
}
