// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authControllerHash() => r'0e88579c672ff49b4181992f1ac9f6c2ea56d9dc';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AuthController
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final AuthFormType formType;

  FutureOr<void> build({
    required AuthFormType formType,
  });
}

/// See also [AuthController].
@ProviderFor(AuthController)
const authControllerProvider = AuthControllerFamily();

/// See also [AuthController].
class AuthControllerFamily extends Family<AsyncValue<void>> {
  /// See also [AuthController].
  const AuthControllerFamily();

  /// See also [AuthController].
  AuthControllerProvider call({
    required AuthFormType formType,
  }) {
    return AuthControllerProvider(
      formType: formType,
    );
  }

  @override
  AuthControllerProvider getProviderOverride(
    covariant AuthControllerProvider provider,
  ) {
    return call(
      formType: provider.formType,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'authControllerProvider';
}

/// See also [AuthController].
class AuthControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AuthController, void> {
  /// See also [AuthController].
  AuthControllerProvider({
    required this.formType,
  }) : super.internal(
          () => AuthController()..formType = formType,
          from: authControllerProvider,
          name: r'authControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authControllerHash,
          dependencies: AuthControllerFamily._dependencies,
          allTransitiveDependencies:
              AuthControllerFamily._allTransitiveDependencies,
        );

  final AuthFormType formType;

  @override
  bool operator ==(Object other) {
    return other is AuthControllerProvider && other.formType == formType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, formType.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<void> runNotifierBuild(
    covariant AuthController notifier,
  ) {
    return notifier.build(
      formType: formType,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
