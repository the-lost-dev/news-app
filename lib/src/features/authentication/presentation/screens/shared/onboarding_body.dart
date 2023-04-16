import 'package:news_app/exports.dart';


import '../../controllers/onboarding_controller.dart';
import 'onboarding_dots.dart';
import 'onboarding_section.dart';

class OnBoardingBody extends ConsumerWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingControllerProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        hSizedBox4,
        const OnboardingSection(),
        hSizedBox4,
        PrimaryButton(
          buttonText: AppStrings.getStarted,
          isLoading: state.isReloading,
          onPressed: state.isLoading
              ? null
              : () async {
                  await ref
                      .read(onboardingControllerProvider.notifier)
                      .completeOnboarding();

                  if (context.mounted) {
                    context.goNamed(AppRoutes.signup.name);
                  }
                },
        ),
        hSizedBox4,
        const OnBoardingDots(),
      ],
    );
  }
}
