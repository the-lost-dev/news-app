import 'package:news_app/exports.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.p24),
        child: Image.asset(
          AppImages.testProfile,
          fit: BoxFit.cover,
          height: SizeConfig.blockSizeVertical * AppSizes.p12,
          width: SizeConfig.blockSizeHorizontal * AppSizes.p24,
        ),
      ),
    );
  }
}
