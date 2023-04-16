import 'package:news_app/exports.dart';

class CustomColorButton extends StatelessWidget {
  const CustomColorButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(AppSizes.p16),
        decoration: BoxDecoration(
          color: AppColors.white50,
          borderRadius: BorderRadius.circular(AppSizes.p10),
        ),
        child: Icon(
          icon,
          size: AppSizes.p18,
          color: AppColors.black100,
        ),
      ),
    );
  }
}
