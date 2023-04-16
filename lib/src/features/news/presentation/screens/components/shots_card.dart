import 'package:news_app/exports.dart';

class Shotscard extends StatelessWidget {
  const Shotscard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockSizeHorizontal * AppSizes.p62,
      padding: const EdgeInsets.all(AppSizes.p10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.p20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.p20),
            child: Image.asset(
              'assets/images/t1.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: SizeConfig.blockSizeHorizontal * AppSizes.p20,
            ),
          ),
          wSizedBox4,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kim Soo-Hyun',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                Text(
                  'Jan 3, 2022',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.grey250,
                      ),
                ),
                addVerticalSpace(AppSizes.p6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.showPasswordIcon,
                      colorFilter: const ColorFilter.mode(
                        AppColors.grey250,
                        BlendMode.srcIn,
                      ),
                    ),
                    wSizedBox2,
                    Text(
                      '40.999',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.grey250,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
