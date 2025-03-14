class BijouValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Hãy nhập vào email';
    }

    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Email không hợp lệ';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Cần nhập vào mật khẩu';
    }

    if (value.length < 8) {
      return 'Mật khẩu cần ít nhất 8 ký tự';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Mật khẩu cần ít nhất một ký tự viết hoa';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Mật khẩu cần ít nhất một ký tự số';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Cần nhập vào số điện thoại';
    }

    final phoneRegExp = RegExp(r'^(0|84)?[1-9]\d{8}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Số điện thoại không hợp lệ';
    }
    return null;
  }
}