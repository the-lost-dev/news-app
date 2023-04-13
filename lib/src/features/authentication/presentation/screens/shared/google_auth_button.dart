import 'package:news_app/exports.dart';

class GoogleAuthButton extends StatelessWidget {
  const GoogleAuthButton({super.key, this.isLogin = false});

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => null, //TODO: IMPLEMENT
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
        child: Row(
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
