import 'package:news_app/exports.dart';

import '../../controllers/auth_controller.dart';
import 'close_button.dart';
import 'google_auth_button.dart';
import 'hide_password_icon.dart';
import 'privacy_policy.dart';

class SignupBody extends ConsumerWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hidePassword = ref.watch(hidePasswordProvider);
    final signupModel = ref.watch(
      authControllerProvider(formType: AuthFormType.signup).notifier,
    );
    final state =
        ref.watch(authControllerProvider(formType: AuthFormType.signup));

    return FocusScope(
      node: signupModel.node,
      child: Form(
        key: signupModel.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
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
              inputType: TextInputType.name,
              isEnabled: !state.isLoading,
              controller: signupModel.nameController,
              textInputAction: TextInputAction.next,
              validator: (email) =>
                  !signupModel.isSubmitted ? null : signupModel.nameErrorText(),
              inputFormatters: [
                AlphaTextFormatter(),
                LengthLimitingTextInputFormatter(16),
              ],
            ),
            hSizedBox2,
            InputField(
              label: AppStrings.email,
              hint: AppStrings.emailHint,
              inputType: TextInputType.emailAddress,
              isEnabled: !state.isLoading,
              controller: signupModel.emailController,
              validator: (email) => !signupModel.isSubmitted
                  ? null
                  : signupModel.emailErrorText(email ?? ''),
              textInputAction: TextInputAction.next,
              onEditingComplete: () => signupModel.emailEditingComplete,
              inputFormatters: [
                ValidatorInputFormatter(
                  editingValidator: EmailEditingRegexValidator(),
                ),
              ],
            ),
            hSizedBox2,
            InputField(
              isEnabled: !state.isLoading,
              label: AppStrings.password,
              hint: AppStrings.passwordHint,
              textInputAction: TextInputAction.done,
              validator: (password) => !signupModel.isSubmitted
                  ? null
                  : signupModel.passwordErrorText(password ?? ''),
              obscureText: hidePassword,
              suffix: const HidePasswordIcon(),
              controller: signupModel.passwordController,
              onEditingComplete: () => signupModel.passwordEditingComplete,
            ),
            hSizedBox4,
            const PrivacyPolicy(),
            hSizedBox4,
            PrimaryButton(
              buttonText: AppStrings.signup,
              isLoading: state.isLoading,
              onPressed: state.isLoading
                  ? null
                  : () => signupModel.validateFormSubmit(),
            ),
            hSizedBox2,
            const Divider(color: AppColors.grey100, thickness: 2),
            hSizedBox2,
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
        ),
      ),
    );
  }
}
