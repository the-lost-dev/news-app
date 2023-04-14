import 'package:news_app/exports.dart';

import 'shared/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.p20,
          vertical: AppSizes.p20,
        ),
        child: OnBoardingBody(),
      ),
    );
  }
}
