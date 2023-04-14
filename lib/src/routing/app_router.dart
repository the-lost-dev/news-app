import 'package:news_app/exports.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    navigatorKey: _rootNavigatorKey,
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
      GoRoute(
        path: AppRoutes.onboard.path,
        name: AppRoutes.onboard.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => OnboardingScreen(key: state.pageKey),
      ),
    ],
  );
});
