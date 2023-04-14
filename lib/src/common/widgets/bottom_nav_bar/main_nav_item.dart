

import 'package:news_app/exports.dart';

class MainNavItem extends StatelessWidget {
  const MainNavItem({
    super.key,
    required this.onTap,
    required this.currentIndex,
    required this.itemIndex,
  });

  final Function(int index) onTap;
  final int currentIndex;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    Color? color;

    if (currentIndex == itemIndex) {
      color = AppColors.primaryColor;
    } else {
      color = AppColors.grey250;
    }

    return InkWell(
      onTap: () => onTap(itemIndex),
      child: SvgPicture.asset(
        currentIndex == itemIndex
            ? AppIcons.activeBottomNavIcons[itemIndex]
            : AppIcons.inactiveBottomNavIcons[itemIndex],
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}
