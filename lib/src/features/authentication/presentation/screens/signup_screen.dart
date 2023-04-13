import 'package:news_app/exports.dart';

import 'shared/signup_body.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: ScrollableWidget(
        child: SignupBody(),
      ),
    );
  }
}

