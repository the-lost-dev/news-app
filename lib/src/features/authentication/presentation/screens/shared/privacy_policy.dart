import 'package:news_app/exports.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomCheckbox(
          isChecked: true,
          onTap: () => null, //TODO: IMPLEMENT
        ),
        wSizedBox4,
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColors.grey150,
                ),
            children: [
              const TextSpan(text: AppStrings.iagreeWith),
              TextSpan(
                text: AppStrings.terms,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.primaryColor,
                    ),
              ),
              const TextSpan(text: AppStrings.and),
              TextSpan(
                text: AppStrings.privacy,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.primaryColor,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
