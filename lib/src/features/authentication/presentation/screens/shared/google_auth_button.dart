import 'package:news_app/exports.dart';

import '../../controllers/auth_controller.dart';

class GoogleAuthButton extends ConsumerWidget {
  const GoogleAuthButton({super.key, this.isLogin = false});

  final bool isLogin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      authControllerProvider(formType: AuthFormType.logIn),
    );

    final model = ref.watch(
      authControllerProvider(formType: AuthFormType.logIn).notifier,
    );
    return InkWell(
      onTap: state.isLoading ? null : () => model.signInWithGoogle(),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.p20,
          vertical: AppSizes.p10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.p10),
          border: Border.all(color: AppColors.grey100),
        ),
        child: state.isLoading
            ? const LoadingIndicator()
            : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.googleIcon),
                  wSizedBox4,
                  Text(
                    isLogin
                        ? '${AppStrings.login} ${AppStrings.withGoogle}'
                        : '${AppStrings.signup} ${AppStrings.withGoogle}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
      ),
    );
  }
}
