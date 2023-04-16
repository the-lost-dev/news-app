import 'package:news_app/exports.dart';

final rememberMeProvider = StateProvider<bool>((ref) => false);

class RememberMe extends ConsumerWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rememberMe = ref.watch(rememberMeProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomCheckbox(
          isChecked: rememberMe,
          onTap: () =>
              ref.read(rememberMeProvider.notifier).state = !rememberMe,
        ),
        wSizedBox4,
        Text(
          AppStrings.rememberMe,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.grey150,
              ),
        ),
      ],
    );
  }
}
