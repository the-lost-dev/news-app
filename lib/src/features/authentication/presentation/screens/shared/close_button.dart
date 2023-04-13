import 'package:news_app/exports.dart';

class ClosePopButton extends StatelessWidget {
  const ClosePopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (context.canPop()) {
          context.pop();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(AppSizes.p6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.grey100),
        ),
        child: const Icon(
          Icons.close_outlined,
          size: AppSizes.p16,
          color: AppColors.grey300,
        ),
      ),
    );
  }
}
