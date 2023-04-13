import 'package:news_app/exports.dart';

import 'shared/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: ScrollableWidget(
        child: LoginBody(),
      ),
    );
  }
}
