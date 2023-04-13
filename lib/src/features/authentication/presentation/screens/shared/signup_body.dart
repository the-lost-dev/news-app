import 'package:news_app/exports.dart';

import 'close_button.dart';
import 'google_auth_button.dart';
import 'hide_password_icon.dart';
import 'privacy_policy.dart';


class SignupBody extends ConsumerWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hidePassword = ref.watch(hidePasswordProvider);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.signup,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const ClosePopButton(),
          ],
        ),
        hSizedBox4,
        const GoogleAuthButton(),
        hSizedBox2,
        const Divider(color: AppColors.grey100, thickness: 1),
        hSizedBox4,
        InputField(
          label: AppStrings.name,
          hint: AppStrings.nameHint,
          controller: TextEditingController(),
        ),
        hSizedBox2,
        InputField(
          label: AppStrings.email,
          hint: AppStrings.emailHint,
          controller: TextEditingController(),
        ),
        hSizedBox2,
        InputField(
          label: AppStrings.password,
          hint: AppStrings.passwordHint,
          obscureText: hidePassword,
          controller: TextEditingController(),
          suffix: const HidePasswordIcon(),
        ),
        hSizedBox4,
        const PrivacyPolicy(),
        hSizedBox4,
        PrimaryButton(
          buttonText: AppStrings.signup,
          onPressed: () => null, //TODO: IMPLEMENT
        ),
        hSizedBox2,
        const Divider(color: AppColors.grey100, thickness: 2),
        hSizedBox4,
        Text(
          AppStrings.alreadyHaveAnAccount,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.grey150),
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            child: Text(
              AppStrings.login,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.primaryColor),
            ),
            onPressed: () => context.pushNamed(AppRoutes.login.name),
          ),
        ),
      ],
    );
  }
}
