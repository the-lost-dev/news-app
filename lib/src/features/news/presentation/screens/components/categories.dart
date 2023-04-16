import 'package:news_app/exports.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * AppSizes.p6,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: AppSizes.p20),
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        addSemanticIndexes: false,
        itemCount: categories.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => wSizedBox6,
        itemBuilder: (context, index) => Text(
          categories[index],
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.grey250,
              ),
        ),
      ),
    );
  }
}
