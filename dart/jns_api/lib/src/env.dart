/// Environment vars.
class Env {
  /// JNS_TOKEN
  static String jnsToken = '';

  /// Load environment vars.
  static void load() {
    jnsToken = String.fromEnvironment('JNS_TOKEN');
  }
}
