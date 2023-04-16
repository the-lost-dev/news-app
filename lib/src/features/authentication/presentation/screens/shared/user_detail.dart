
import 'package:news_app/exports.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({
    super.key,
    required this.amount,
    required this.title,
  });

  final int amount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          amount.toString(),
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        addVerticalSpace(AppSizes.p6),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.grey250,
                fontWeight: FontWeight.w600,
                fontSize: AppSizes.p14,
              ),
        ),
      ],
    );
  }
}
