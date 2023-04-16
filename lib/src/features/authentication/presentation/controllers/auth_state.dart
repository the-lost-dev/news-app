// import 'package:news_app/exports.dart';

// /// Form type for email & password authentication
// enum AuthFormType { logIn, signup }

// /// State class for the email & password form.
// class AuthState with EmailAndPasswordValidators {
//   AuthState({
//     required this.formType,
//     this.value = const AsyncValue.data(null),
//   });

//   final AuthFormType formType;
//   final AsyncValue<void> value;

//   bool get isLoading => value.isLoading;

//   AuthState copyWith({
//     AuthFormType? formType,
//     AsyncValue<void>? value,
//   }) {
//     return AuthState(
//       formType: formType ?? this.formType,
//       value: value ?? this.value,
//     );
//   }

//   @override
//   String toString() =>
//       'EmailPasswordSignInState(formType: $formType, value: $value)';

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is AuthState &&
//         other.formType == formType &&
//         other.value == value;
//   }

//   @override
//   int get hashCode => formType.hashCode ^ value.hashCode;
// }

// extension AuthStateX on AuthState {
//   String get errorAlertTitle {
//     if (formType == AuthFormType.signup) {
//       return 'Registration failed';
//     } else {
//       return 'Sign in failed';
//     }
//   }

//   bool canSubmitEmail(String email) {
//     return emailSubmitValidator.isValid(email);
//   }

//   bool canSubmitPassword(String password) {
//     if (formType == AuthFormType.signup) {
//       return passwordRegisterSubmitValidator.isValid(password);
//     }
//     return passwordSignInSubmitValidator.isValid(password);
//   }

//   String? emailErrorText(String email) {
//     final bool showErrorText = !canSubmitEmail(email);
//     final String errorText =
//         email.isEmpty ? 'Email can\'t be empty' : 'Invalid email';
//     return showErrorText ? errorText : null;
//   }

//   String? passwordErrorText(String password) {
//     final bool showErrorText = !canSubmitPassword(password);
//     final String errorText =
//         password.isEmpty ? 'Password can\'t be empty' : 'Password is too short';
//     return showErrorText ? errorText : null;
//   }
// }
