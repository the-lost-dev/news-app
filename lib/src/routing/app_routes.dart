enum AppRoutes {
  home(name: 'home', path: '/home'),

  favorite(name: 'favorite', path: '/favorite'),

  notification(name: 'notification', path: '/notification'),

  profile(name: 'profile', path: '/profile'),

  newsdetail(name: 'news-detail', path: 'news-detail'),

  signup(name: 'signup', path: '/signup'),

  login(name: 'login', path: '/'),

  onboard(name: 'onboard', path: '/onboard');

  const AppRoutes({required this.name, required this.path});

  final String name;
  final String path;

  @override
  String toString() => name;
}
