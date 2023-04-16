import 'package:news_app/exports.dart';

import '../../controllers/auth_controller.dart';
import 'close_button.dart';
import 'forgot_password.dart';
import 'google_auth_button.dart';
import 'hide_password_icon.dart';
import 'remember_me.dart';

class LoginBody extends ConsumerWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hidePassword = ref.watch(hidePasswordProvider);
    final loginModel = ref.watch(
      authControllerProvider(formType: AuthFormType.logIn).notifier,
    );
    final state =
        ref.watch(authControllerProvider(formType: AuthFormType.logIn));
    return FocusScope(
      node: loginModel.node,
      child: Form(
        key: loginModel.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.login,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const ClosePopButton(),
              ],
            ),
            hSizedBox4,
            const GoogleAuthButton(isLogin: true),
            hSizedBox2,
            const Divider(color: AppColors.grey100, thickness: 1),
            hSizedBox4,
            InputField(
              label: AppStrings.email,
              hint: AppStrings.emailHint,
              isEnabled: !state.isLoading,
              controller: loginModel.emailController,
              validator: (email) => !loginModel.isSubmitted
                  ? null
                  : loginModel.emailErrorText(email ?? ''),
              textInputAction: TextInputAction.next,
              onEditingComplete: () => loginModel.emailEditingComplete,
              inputFormatters: [
                ValidatorInputFormatter(
                  editingValidator: EmailEditingRegexValidator(),
                ),
              ],
            ),
            hSizedBox2,
            InputField(
              label: AppStrings.password,
              hint: AppStrings.passwordHint,
              obscureText: hidePassword,
              isEnabled: !state.isLoading,
              textInputAction: TextInputAction.done,
              controller: loginModel.passwordController,
              suffix: const HidePasswordIcon(),
              validator: (password) => !loginModel.isSubmitted
                  ? null
                  : loginModel.passwordErrorText(password ?? ''),
              onEditingComplete: () => loginModel.passwordEditingComplete,
            ),
            hSizedBox4,
            PrimaryButton(
              buttonText: AppStrings.login,
              isLoading: state.isLoading,
              onPressed: state.isLoading
                  ? null
                  : () => loginModel.validateFormSubmit(),
            ),
            hSizedBox4,
            const RememberMe(),
            hSizedBox2,
            const ForgotPassword(),
            const Divider(color: AppColors.grey100, thickness: 2),
            hSizedBox2,
            Text(
              AppStrings.dontHaveAnAccount,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.grey150),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                child: Text(
                  AppStrings.signup,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.primaryColor),
                ),
                onPressed: () => context.pushNamed(AppRoutes.signup.name),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
