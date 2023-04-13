import 'package:news_app/exports.dart';


final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    navigatorKey: _rootNavigatorKey,
    routes: [
      // ShellRoute(
      //   navigatorKey: _shellNavigatorKey,
      //   builder: (context, state, child) => MainScaffold(child: child),
      //   routes: [
      //     GoRoute(
      //       path: NavRoutes.home.path,
      //       name: NavRoutes.home.name,
      //       parentNavigatorKey: _shellNavigatorKey,
      //       pageBuilder: (context, state) => NoTransitionPage(
      //         child: DashBoardScreen(key: state.pageKey),
      //       ),
      //     ),
      //     GoRoute(
      //       path: NavRoutes.wallet.path,
      //       name: NavRoutes.wallet.name,
      //       parentNavigatorKey: _shellNavigatorKey,
      //       pageBuilder: (context, state) => NoTransitionPage(
      //         child: WalletScreen(key: state.pageKey),
      //       ),
      //     ),
      //     GoRoute(
      //       path: NavRoutes.store.path,
      //       name: NavRoutes.store.name,
      //       parentNavigatorKey: _shellNavigatorKey,
      //       pageBuilder: (context, state) => NoTransitionPage(
      //         child: StoreScreen(key: state.pageKey),
      //       ),
      //     ),
      //     GoRoute(
      //       path: NavRoutes.settings.path,
      //       name: NavRoutes.settings.name,
      //       parentNavigatorKey: _shellNavigatorKey,
      //       pageBuilder: (context, state) => NoTransitionPage(
      //         child: SettingsScreen(key: state.pageKey),
      //       ),
      //     ),
      //   ],
      // ),
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
