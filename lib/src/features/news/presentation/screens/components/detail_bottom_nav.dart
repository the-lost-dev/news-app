
import 'package:news_app/exports.dart';

import 'custom_text_field.dart';
import 'textfield_suffix_icon.dart';

class DetailBottomNav extends StatelessWidget {
  const DetailBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(vertical: AppSizes.p14),
      child: CustomTextField(
        fillColor: AppColors.scaffoldBgColor,
        hintText: AppStrings.typeComment,
        suffixIcon: const TextFieldSuffixIcon(icon: AppIcons.sendIcon),
        onchanged: (text) => null,
      ),
    );
  }
}
