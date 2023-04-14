import 'package:news_app/exports.dart';


class MainScaffold extends ConsumerWidget {
  const MainScaffold({
    super.key,
    required this.child,
    this.title,
    this.appBar,
    this.hasBackButton = false,
  });

  final bool hasBackButton;
  final Widget child;
  final String? title;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNav = ref.watch(bottomNavProvider.notifier);
    return Scaffold(
      appBar: appBar,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: MainBottomNavBar(
        currentIndex: bottomNav.calculateSelectedIndex(),
        onTap: (index) => bottomNav.onBottomNavTap(index),
      ),
      body: GestureDetector(
        child: child,
        onTap: () {
          final FocusScopeNode focusScopeNode = FocusScope.of(context);

          if (!focusScopeNode.hasPrimaryFocus) {
            focusScopeNode.unfocus();
          }
        },
      ),
    );
  }
}
