import 'package:firebase_auth/firebase_auth.dart';
import 'package:news_app/exports.dart';

import 'features/authentication/data/auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepository(FirebaseAuth.instance),
);

final authStateChangesProvider = StreamProvider<User?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges;
});

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

// // declare the provider
// final dateFormatterProvider = Provider<DateFormat>((ref) {
//   return DateFormat.MMMEd();
// });
