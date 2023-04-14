import 'package:news_app/exports.dart';

import 'onboarding_section.dart';

class OnBoardingDots extends ConsumerWidget {
  const OnBoardingDots({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dotIndex = ref.watch(onboardingProvider);
    return SizedBox(
      height: AppSizes.p4,
      child: ListView.separated(
        itemCount: 3,
        primary: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => wSizedBox2,
        itemBuilder: (context, index) => AnimatedContainer(
          curve: Curves.linear,
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            color:
                index == dotIndex ? AppColors.primaryColor : AppColors.grey200,
            borderRadius: BorderRadius.circular(AppSizes.p10),
          ),
          height: AppSizes.p4,
          width: index == dotIndex ? AppSizes.p20 : AppSizes.p8,
        ),
      ),
    );
  }
}
