class InitialLink {
  InitialLink._();

  static String? _value;

  static String? get() => _value;

  static String? getDomain() => null;

  // ignore: use_setters_to_change_properties
  static void override(String? value) {
    _value = value;
  }
}
