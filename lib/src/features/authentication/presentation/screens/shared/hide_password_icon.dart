import 'package:news_app/exports.dart';

final hidePasswordProvider = StateProvider<bool>((ref) => true);

class HidePasswordIcon extends ConsumerWidget {
  const HidePasswordIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscureBool = ref.watch(hidePasswordProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p12),
      child: InkWell(
        onTap: () =>
            ref.read(hidePasswordProvider.notifier).state = !obscureBool,
        child: SvgPicture.asset(
          obscureBool ? AppIcons.hidePasswordIcon : AppIcons.showPasswordIcon,
        ),
      ),
    );
  }
}
