import 'package:news_app/exports.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  const MainAppBar({
    super.key,
    required this.title,
  });

  final String title;

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
            CustomColorButton(
              icon: Icons.more_vert_outlined,
              onPressed: () => null, //TODO: IMPLEMENT
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
