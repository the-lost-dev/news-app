import 'package:news_app/exports.dart';

import 'onboarding_content.dart';

final onboardingProvider = StateProvider<int>((ref) => 0);

class OnboardingSection extends ConsumerWidget {
  const OnboardingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: PageView(
        onPageChanged: (index) => ref.read(onboardingProvider.notifier).state = index,
        physics: const BouncingScrollPhysics(),
        children: const [
          OnboardingContent(
            title: AppStrings.onboardTitle1,
            subtitle: AppStrings.onboardSubTitle1,
          ),
          OnboardingContent(
            title: AppStrings.onboardTitle2,
            subtitle: AppStrings.onboardSubTitle2,
          ),
          OnboardingContent(
            title: AppStrings.onboardTitle3,
            subtitle: AppStrings.onboardSubTitle3,
          ),
        ],
      ),
    );
  }
}
