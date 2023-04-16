import 'package:news_app/exports.dart';

class OnboardingRepository {
  OnboardingRepository({required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  static const onboardingCompleteKey = 'onboardingComplete';

  Future<void> setOnboardingComplete() async {
    await sharedPreferences.setBool(onboardingCompleteKey, true);
  }

  bool isOnboardingComplete() =>
      sharedPreferences.getBool(onboardingCompleteKey) ?? false;
}

final onboardingRepositoryProvider = Provider<OnboardingRepository>(
  (ref) => throw UnimplementedError(),
);
