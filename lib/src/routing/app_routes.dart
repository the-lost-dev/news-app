enum AppRoutes {
  signup(name: 'signup', path: '/signup'),
  
  login(name: 'login', path: '/');

  const AppRoutes({required this.name, required this.path});

  final String name;
  final String path;

  @override
  String toString() => name;
}
