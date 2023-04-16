
import 'package:news_app/exports.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.shotForYou,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: AppSizes.p20,
                ),
          ),
          InkWell(
            onTap: () => null, // TODO: IMPLEMENT
            child: Text(
              AppStrings.viewAll,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.grey250,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
