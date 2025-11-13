
import 'perfect_contacts_platform_interface.dart';

class PerfectContacts {
  Future<String?> getPlatformVersion() {
    return PerfectContactsPlatform.instance.getPlatformVersion();
  }
}
