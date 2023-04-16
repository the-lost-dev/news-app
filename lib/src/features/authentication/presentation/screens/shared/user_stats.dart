
import 'package:news_app/exports.dart';

import 'user_detail.dart';

class UserStats extends StatelessWidget {
  const UserStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.p20),
      decoration: BoxDecoration(
        color: AppColors.white50,
        borderRadius: BorderRadius.circular(AppSizes.p20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          UserDetail(amount: 25, title: AppStrings.article),
          UserDetail(amount: 455, title: AppStrings.followers),
          UserDetail(amount: 398, title: AppStrings.following),
        ],
      ),
    );
  }
}
