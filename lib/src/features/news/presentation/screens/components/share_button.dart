

import 'package:news_app/exports.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => null,
      child: Container(
        padding: const EdgeInsets.all(AppSizes.p16),
        decoration: BoxDecoration(
          color: AppColors.white50,
          borderRadius: BorderRadius.circular(AppSizes.p10),
        ),
        child: SvgPicture.asset(
          AppIcons.shareIcon,
          colorFilter: const ColorFilter.mode(
            AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
