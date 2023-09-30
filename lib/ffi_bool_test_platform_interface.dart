import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ffi_bool_test_method_channel.dart';

abstract class FfiBoolTestPlatform extends PlatformInterface {
  /// Constructs a FfiBoolTestPlatform.
  FfiBoolTestPlatform() : super(token: _token);

  static final Object _token = Object();

  static FfiBoolTestPlatform _instance = MethodChannelFfiBoolTest();

  /// The default instance of [FfiBoolTestPlatform] to use.
  ///
  /// Defaults to [MethodChannelFfiBoolTest].
  static FfiBoolTestPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FfiBoolTestPlatform] when
  /// they register themselves.
  static set instance(FfiBoolTestPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
