import 'package:news_app/exports.dart';

import 'shared/user_avatar.dart';
import 'shared/user_stats.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MainAppBar(
        title: AppStrings.profile,
        actionWidget: CustomColorButton(
          icon: Icons.edit_outlined,
          onPressed: () => null, //TODO: IMPLEMENT
        ),
      ),
      body: ScrollableWidget(
        child: Column(
          children: [
            const UserAvatar(),
            hSizedBox4,
            Text(
              'Kim Ji-Won',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
            ),
            addVerticalSpace(AppSizes.p6),
            Text(
              '"Senior Journalist"',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.grey250,
                    fontWeight: FontWeight.w600,
                    fontSize: AppSizes.p14,
                  ),
            ),
            hSizedBox4,
            const UserStats(),
          ],
        ),
      ),
    );
  }
}
