import 'package:news_app/exports.dart';

import 'textfield_suffix_icon.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.onchanged,
    this.fillColor = AppColors.white,
    this.hintText = AppStrings.searchHint,
    this.suffixIcon = const TextFieldSuffixIcon(),
  });

  final Function(String)? onchanged;
  final Color fillColor;
  final String hintText;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p20),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: AppColors.black100,
              decoration: InputDecoration(
                fillColor: fillColor,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: AppSizes.p16,
                  horizontal: AppSizes.p20,
                ),
                suffixIcon: suffixIcon,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.white),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.white),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.white),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.grey250.withOpacity(.6),
                    ),
              ),
              onChanged: onchanged,
            ),
          ),
        ],
      ),
    );
  }
}
