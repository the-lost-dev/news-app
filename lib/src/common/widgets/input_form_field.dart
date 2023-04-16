import 'package:news_app/exports.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.fillColor,
    this.inputType = TextInputType.text,
    this.suffix,
    this.maxLines = 1,
    this.isEnabled = true,
    this.padding = const EdgeInsets.symmetric(
      horizontal: AppSizes.p16,
      vertical: AppSizes.p12,
    ),
    this.onEditingComplete,
    this.onChanged,
    this.onPressed,
    this.readOnly = false,
    this.isFilled,
    this.prefix,
    this.inputFormatters,
    this.textInputAction,
    this.maxLength,
    this.textColor = AppColors.black100,
    this.suffixPadding = 0,
    this.hintColor = AppColors.grey200,
    this.enabledBorder,
    this.focusedBorder,
    this.obscureText = false,
    this.validator,
  });

  final String label;
  final String hint;
  final TextEditingController controller;
  final TextInputType inputType;
  final Widget? prefix, suffix;
  final int maxLines;
  final bool isEnabled;
  final EdgeInsets? padding;
  final Function()? onEditingComplete;
  final Function(String)? onChanged;
  final VoidCallback? onPressed;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final bool? isFilled;
  final Color? fillColor;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final Color textColor;
  final double suffixPadding;
  final Color hintColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        addVerticalSpace(AppSizes.p6),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          maxLength: maxLength,
          onTap: onPressed,
          controller: controller,
          keyboardType: inputType,
          enabled: isEnabled,
          readOnly: readOnly,
          onChanged: onChanged,
          textInputAction: textInputAction,
          onEditingComplete: onEditingComplete,
          inputFormatters: inputFormatters,
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: isFilled,
            fillColor: fillColor,
            hintText: hint,
            hintStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: hintColor,
                ),
            prefixIcon: prefix,
            enabledBorder: enabledBorder,
            focusedBorder: focusedBorder,
            suffixIcon: Padding(
              padding: EdgeInsets.all(suffixPadding),
              child: suffix,
            ),
            contentPadding: padding,
          ),
          maxLines: maxLines,
        ),
      ],
    );
  }
}
