import 'package:news_app/exports.dart';

import 'share_button.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(AppRoutes.newsdetail.name),
      child: Container(
        width: SizeConfig.blockSizeHorizontal * AppSizes.p80,
        padding: const EdgeInsets.all(AppSizes.p10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppSizes.p20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: SizeConfig.blockSizeVertical * AppSizes.p26,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(AppSizes.p20),
              ),
            ),
            hSizedBox4,
            Text(
              'Stay Ahead of the Game with Comprehensive ',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: AppSizes.p18,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            hSizedBox2,
            Row(
              children: [
                Container(
                  height: AppSizes.p50,
                  width: AppSizes.p50,
                  decoration: const BoxDecoration(
                    color: Colors.amberAccent,
                    shape: BoxShape.circle,
                  ),
                ),
                wSizedBox4,
                Column(
                  mainAxisSize: MainAxisSize.min,
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
                    )
                  ],
                ),
                const Spacer(),
                const ShareButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
