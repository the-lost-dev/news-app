import 'package:news_app/exports.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        child: Text(
          AppStrings.forgotPassword,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.primaryColor),
        ),
        onPressed: () => null, //TODO: IMPLEMENT
      ),
    );
  }
}
