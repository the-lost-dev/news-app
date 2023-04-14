enum AppRoutes {
  home(name: 'home', path: '/'),

  favorite(name: 'favorite', path: '/favorite'),

  notification(name: 'notification', path: '/notification'),

  profile(name: 'profile', path: '/profile'),

  signup(name: 'signup', path: '/auth/signup'),

  login(name: 'login', path: '/auth/login'),

  onboard(name: 'onboard', path: '/onboard');

  const AppRoutes({required this.name, required this.path});

  final String name;
  final String path;

  @override
  String toString() => name;
}
