

import 'package:news_app/exports.dart';

class ArticleHeadline extends StatelessWidget {
  const ArticleHeadline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSizes.p10),
      decoration: BoxDecoration(
        color: AppColors.grey25,
        borderRadius: BorderRadius.circular(AppSizes.p20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: SizeConfig.blockSizeVertical * AppSizes.p34,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(AppSizes.p20),
            ),
          ),
          hSizedBox2,
          Text(
            '#Health',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryColor,
                ),
          ),
          hSizedBox4,
          Text(
            'Stay Ahead of the Game with Comprehensive ',
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: AppSizes.p18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
          ),
        ],
      ),
    );
  }
}
