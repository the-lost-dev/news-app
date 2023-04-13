import 'package:news_app/exports.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.onPressed,
    this.childWidget,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor = AppColors.white,
    this.buttonText,
    this.isLoading = false,
    this.padding = const EdgeInsets.symmetric(
      vertical: AppSizes.p16,
      horizontal: AppSizes.p40,
    ),
    this.buttonCurveRadius = AppSizes.p10,
  });

  final VoidCallback? onPressed;
  final Widget? childWidget;
  final Color backgroundColor;
  final Color textColor;
  final String? buttonText;
  final bool isLoading;
  final EdgeInsets padding;
  final double buttonCurveRadius;

  @override
  Widget build(BuildContext context) {
    Widget child = (buttonText == null)
        ? (childWidget ?? const Text(''))
        : Text(
            buttonText ?? '',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: textColor,
                ),
          );

    if (isLoading) {
      child = const LoadingIndicator();
    }
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonCurveRadius),
          ),
          padding: padding,
        ),
        child: child,
      ),
    );
  }
}
