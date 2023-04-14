import 'package:news_app/exports.dart';

import 'onboarding_dots.dart';
import 'onboarding_section.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        hSizedBox4,
        const OnboardingSection(),
        hSizedBox4,
        PrimaryButton(
          buttonText: AppStrings.getStarted,
          onPressed: () => context.goNamed(AppRoutes.signup.name),
        ),
        hSizedBox4,
        const OnBoardingDots(),
      ],
    );
  }
}
