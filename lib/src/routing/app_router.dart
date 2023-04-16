import 'package:news_app/exports.dart';
import 'package:news_app/src/features/authentication/data/onboarding_repository.dart';

import 'go_router_refresh_stream.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final onboardingRepository = ref.watch(onboardingRepositoryProvider);
  return GoRouter(
    initialLocation:'/',
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      final didCompleteOnboarding = onboardingRepository.isOnboardingComplete();

      print(state.subloc);

      if (!didCompleteOnboarding) {
        if (state.subloc != AppRoutes.onboard.path) {
          return AppRoutes.onboard.path;
        }
      }

      final isUserLoggedIn = authRepository.currentUser != null;

      print(isUserLoggedIn);

      if (isUserLoggedIn) {
        if (state.subloc == AppRoutes.signup.path ||
            state.subloc == AppRoutes.login.path) {
          return AppRoutes.home.path;
        }
      } else {
        if (state.subloc.startsWith(AppRoutes.home.path) ||
            state.subloc.startsWith(AppRoutes.profile.path) ||
            state.subloc.startsWith(AppRoutes.notification.path) ||
            state.subloc.startsWith(AppRoutes.favorite.path)) {
          return AppRoutes.signup.path;
        }
      }
      return null;
    },
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges),
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => MainScaffold(child: child),
        routes: [
          GoRoute(
            path: AppRoutes.home.path,
            name: AppRoutes.home.name,
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => HomeScreen(key: state.pageKey),
            routes: [
              GoRoute(
                path: AppRoutes.newsdetail.path,
                name: AppRoutes.newsdetail.name,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => DetailScreen(key: state.pageKey),
              ),
            ],
          ),
          GoRoute(
            path: AppRoutes.favorite.path,
            name: AppRoutes.favorite.name,
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => FavoriteScreen(key: state.pageKey),
          ),
          GoRoute(
            path: AppRoutes.notification.path,
            name: AppRoutes.notification.name,
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => NotificationScreen(key: state.pageKey),
          ),
          GoRoute(
            path: AppRoutes.profile.path,
            name: AppRoutes.profile.name,
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => ProfileScreen(key: state.pageKey),
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.onboard.path,
        name: AppRoutes.onboard.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => OnboardingScreen(key: state.pageKey),
      ),
      GoRoute(
        path: AppRoutes.signup.path,
        name: AppRoutes.signup.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => SignupScreen(key: state.pageKey),
      ),
      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => LoginScreen(key: state.pageKey),
      ),
    ],
  );
});
