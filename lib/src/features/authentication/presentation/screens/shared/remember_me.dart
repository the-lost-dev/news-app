import 'package:news_app/exports.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

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
