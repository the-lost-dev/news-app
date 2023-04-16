import 'dart:async';

import 'package:news_app/exports.dart';

class AccountScreenController extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future<void> signOut() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
        () => ref.read(authRepositoryProvider).signOut());
  }
}

final accountControllerProvider =
    AsyncNotifierProvider.autoDispose<AccountScreenController, void>(
  AccountScreenController.new,
);
