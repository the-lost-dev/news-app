import 'package:news_app/exports.dart';

import 'main_nav_item.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.p20),
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MainNavItem(
            currentIndex: currentIndex,
            onTap: onTap,
            itemIndex: 0,
          ),
          MainNavItem(
            currentIndex: currentIndex,
            onTap: onTap,
            itemIndex: 1,
          ),
          MainNavItem(
            currentIndex: currentIndex,
            onTap: onTap,
            itemIndex: 2,
          ),
          MainNavItem(
            currentIndex: currentIndex,
            onTap: onTap,
            itemIndex: 3,
          )
        ],
      ),
    );
  }
}
