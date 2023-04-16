import 'package:news_app/exports.dart';

class TextFieldSuffixIcon extends StatelessWidget {
  const TextFieldSuffixIcon({super.key, this.icon = AppIcons.searchIcon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => null, //TODO: IMPLEMENT
      child: Container(
        padding: const EdgeInsets.all(AppSizes.p10),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(AppSizes.p10),
        ),
        child: SvgPicture.asset(
          icon,
          colorFilter: const ColorFilter.mode(
            AppColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
