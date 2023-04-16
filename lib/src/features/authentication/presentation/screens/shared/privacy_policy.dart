import 'package:news_app/exports.dart';

final privacyCheckerProvider = StateProvider<bool>((ref) => false);

class PrivacyPolicy extends ConsumerWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPrivacyChecked = ref.watch(privacyCheckerProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomCheckbox(
          isChecked: isPrivacyChecked,
          onTap: () => ref.read(privacyCheckerProvider.notifier).state = !isPrivacyChecked,
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
