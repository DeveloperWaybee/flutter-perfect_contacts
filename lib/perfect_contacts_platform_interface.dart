import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'perfect_contacts_method_channel.dart';

abstract class PerfectContactsPlatform extends PlatformInterface {
  /// Constructs a PerfectContactsPlatform.
  PerfectContactsPlatform() : super(token: _token);

  static final Object _token = Object();

  static PerfectContactsPlatform _instance = MethodChannelPerfectContacts();

  /// The default instance of [PerfectContactsPlatform] to use.
  ///
  /// Defaults to [MethodChannelPerfectContacts].
  static PerfectContactsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PerfectContactsPlatform] when
  /// they register themselves.
  static set instance(PerfectContactsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
