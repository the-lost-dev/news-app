import 'dart:async';

import 'package:news_app/exports.dart';
import 'package:news_app/src/features/authentication/data/onboarding_repository.dart';

class OnboardingController extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr build() {}

  Future<void> completeOnboarding() async {
    final onboardingRepository = ref.watch(onboardingRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => onboardingRepository.setOnboardingComplete(),
    );
  }
}

final onboardingControllerProvider =
    AutoDisposeAsyncNotifierProvider<OnboardingController, void>(
  OnboardingController.new,
);
