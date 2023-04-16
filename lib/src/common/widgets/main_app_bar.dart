import 'package:news_app/exports.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  const MainAppBar({
    super.key,
    required this.title,
    this.actionWidget = const MoreButton(),
  });

  final String title;
  final Widget actionWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.all(AppSizes.p20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomColorButton(
              icon: Icons.arrow_back_ios_sharp,
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                }
              },
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            actionWidget,
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MoreButton extends StatelessWidget {
  const MoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomColorButton(
      icon: Icons.more_vert_outlined,
      onPressed: () => null, //TODO: IMPLEMENT
    );
  }
}
