import 'dart:async';

import 'package:news_app/exports.dart';
import 'package:news_app/src/features/authentication/presentation/screens/shared/remember_me.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../screens/shared/privacy_policy.dart';

part 'auth_controller.g.dart';

// 3. annotate
@riverpod
// 4. extend like this
class AuthController extends _$AuthController {
  @override
  FutureOr<void> build({required AuthFormType formType}) => {};

  Future<bool> submit(String email, String password) async {
    state = const AsyncLoading();
    final value = await AsyncValue.guard(() => _authenticate(email, password));
    state = value;
    return value.hasError == false;
  }

  Future<void> _authenticate(String email, String password) {
    switch (formType) {
      case AuthFormType.logIn:
        return ref.read(authRepositoryProvider).signInWithEmailAndPassword(
              email: email,
              password: password,
            );
      case AuthFormType.signup:
        return ref.read(authRepositoryProvider).createUserWithEmailAndPassword(
              email: email,
              password: password,
            );
    }
  }

  Future<bool> signInWithGoogle() async {
    state = const AsyncLoading();
    final value = await AsyncValue.guard(
      () => ref.read(authRepositoryProvider).signInwithGoogle(),
    );
    state = value;
    return value.hasError == false;
  }

  final formKey = GlobalKey<FormState>();
  final node = FocusScopeNode();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String get email => emailController.text;
  String get password => passwordController.text;

  bool isSubmitted = false;

  Future<void> validateFormSubmit() async {
    isSubmitted = true;
    // only submit the form if validation passes

    if (formType == AuthFormType.signup) {
      if (formKey.currentState!.validate() &&
          ref.read(privacyCheckerProvider)) {
        final controller = ref.read(
          authControllerProvider(formType: AuthFormType.signup).notifier,
        );
        await controller.submit(email, password);
      }
    } else {
      if (formKey.currentState!.validate() && ref.read(rememberMeProvider)) {
        final controller = ref.read(
          authControllerProvider(formType: AuthFormType.logIn).notifier,
        );
        await controller.submit(email, password);
      }
    }
  }

  void emailEditingComplete() {
    if (canSubmitEmail(email)) {
      node.nextFocus();
    }
  }

  void passwordEditingComplete() {
    if (!canSubmitEmail(email)) {
      node.previousFocus();
      return;
    }
    validateFormSubmit();
  }

  String? nameErrorText() {
    if (nameController.text.isEmpty ||
        nameController.text.split(' ').length < 2) {
      return 'Please input your full name';
    }
    return null;
  }

  String? emailErrorText(String email) {
    final bool showErrorText = !canSubmitEmail(email);
    final String errorText =
        email.isEmpty ? 'Email can\'t be empty' : 'Invalid email';
    return showErrorText ? errorText : null;
  }

  String? passwordErrorText(String password) {
    final bool showErrorText = !canSubmitPassword(password);
    final String errorText =
        password.isEmpty ? 'Password can\'t be empty' : 'Password is too short';
    return showErrorText ? errorText : null;
  }

  String get errorAlertTitle {
    if (formType == AuthFormType.signup) {
      return 'Registration failed';
    } else {
      return 'Sign in failed';
    }
  }

  bool canSubmitEmail(String email) {
    return EmailAndPasswordValidators().emailSubmitValidator.isValid(email);
  }

  bool canSubmitPassword(String password) {
    if (formType == AuthFormType.signup) {
      return EmailAndPasswordValidators()
          .passwordRegisterSubmitValidator
          .isValid(password);
    }
    return EmailAndPasswordValidators()
        .passwordSignInSubmitValidator
        .isValid(password);
  }
}

enum AuthFormType { logIn, signup }
