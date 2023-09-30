import 'package:flutter_test/flutter_test.dart';
import 'package:ffi_bool_test/ffi_bool_test.dart';
import 'package:ffi_bool_test/ffi_bool_test_platform_interface.dart';
import 'package:ffi_bool_test/ffi_bool_test_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFfiBoolTestPlatform
    with MockPlatformInterfaceMixin
    implements FfiBoolTestPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FfiBoolTestPlatform initialPlatform = FfiBoolTestPlatform.instance;

  test('$MethodChannelFfiBoolTest is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFfiBoolTest>());
  });

  test('getPlatformVersion', () async {
    FfiBoolTest ffiBoolTestPlugin = FfiBoolTest();
    MockFfiBoolTestPlatform fakePlatform = MockFfiBoolTestPlatform();
    FfiBoolTestPlatform.instance = fakePlatform;

    expect(await ffiBoolTestPlugin.getPlatformVersion(), '42');
  });
}
