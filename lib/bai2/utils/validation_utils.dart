class ValidationUtils {
  static String? validateUsername(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Tên không được để trống';
    }
    return null;
  }
}
