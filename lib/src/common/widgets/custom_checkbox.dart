
import 'package:news_app/exports.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onTap,
  });

  final bool isChecked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: AppSizes.p24,
        width: AppSizes.p24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.p8),
          color: isChecked ? AppColors.primaryColor : AppColors.white,
        ),
        child: Icon(
          Icons.check,
          color: isChecked ? AppColors.white : Colors.transparent,
          size: AppSizes.p16,
        ),
      ),
    );
  }
}
