import 'package:news_app/exports.dart';

class ProfileDateWidget extends StatelessWidget {
  const ProfileDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p20),
      child: Row(
        children: [
          Container(
            height: SizeConfig.blockSizeHorizontal * AppSizes.p12,
            width: SizeConfig.blockSizeHorizontal * AppSizes.p12,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(AppSizes.p10),
            ),
          ),
          wSizedBox4,
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.welcomeBack,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              Text(
                'Monday, 3 January',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.grey250,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
