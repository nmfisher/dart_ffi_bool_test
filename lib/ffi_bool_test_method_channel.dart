import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ffi_bool_test_platform_interface.dart';

/// An implementation of [FfiBoolTestPlatform] that uses method channels.
class MethodChannelFfiBoolTest extends FfiBoolTestPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ffi_bool_test');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
