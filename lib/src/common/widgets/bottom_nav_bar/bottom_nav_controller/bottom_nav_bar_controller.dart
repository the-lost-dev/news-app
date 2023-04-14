
import 'package:news_app/exports.dart';

final bottomNavProvider = NotifierProvider<BottomNavNotifier, int>(
  BottomNavNotifier.new,
);

class BottomNavNotifier extends Notifier<int> {
  @override
  int build() => 0;

  int calculateSelectedIndex() {
    final GoRouter route = ref.read(goRouterProvider);
    final String routeLocation = route.location;

    if (routeLocation == AppRoutes.home.path) {
      return 0;
    }
    if (routeLocation == AppRoutes.favorite.path) {
      return 1;
    }
    if (routeLocation == AppRoutes.notification.path) {
      return 2;
    }
    if (routeLocation == AppRoutes.profile.path) {
      return 3;
    }
    return 3;
  }

  void onBottomNavTap(int value) {
    switch (value) {
      case 0:
        return ref.read(goRouterProvider).goNamed(AppRoutes.home.name);
      case 1:
        return ref.read(goRouterProvider).goNamed(AppRoutes.favorite.name);
      case 2:
        return ref.read(goRouterProvider).goNamed(AppRoutes.notification.name);
      case 3:
        return ref.read(goRouterProvider).goNamed(AppRoutes.profile.name);

      default:
        return ref.read(goRouterProvider).goNamed(AppRoutes.home.name);
    }
  }
}
