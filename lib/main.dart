import 'exports.dart';
import 'src/features/authentication/data/onboarding_repository.dart';

//TODO: PASSWORD STRENGTH CHECEKR SIGN UP SCREEN
//TODO: LOGOUT BUTTON
//TODO: NO NOTFICATIONS NO FAVORITES
//TODO: SAVE USER NAME 
//TODO: FORGOT PASSWORD BUTTON


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final sharedPreferences = await SharedPreferences.getInstance();

  final container = ProviderContainer(overrides: [
    onboardingRepositoryProvider.overrideWithValue(
      OnboardingRepository(sharedPreferences: sharedPreferences),
    ),
  ]);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
    systemNavigationBarColor: AppColors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(UncontrolledProviderScope(
    container: container,
    child: const NewsApp(),
  ));
}
