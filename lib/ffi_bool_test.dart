
import 'ffi_bool_test_platform_interface.dart';

class FfiBoolTest {
  Future<String?> getPlatformVersion() {
    return FfiBoolTestPlatform.instance.getPlatformVersion();
  }
}
