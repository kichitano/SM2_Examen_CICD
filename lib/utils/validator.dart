/// Clase de utilidades para validaciones y operaciones comunes
/// Creada para el Examen de CI/CD - Auditoría de Sistemas
class Validator {
  /// 1. Validar Email
  /// Recibe un string. Retorna true si contiene "@" y ".", de lo contrario false.
  static bool validateEmail(String email) {
    return email.contains('@') && email.contains('.');
  }

  /// 2. Seguridad Contraseña
  /// Recibe un string. Retorna true si la longitud es mayor a 6 caracteres.
  static bool isPasswordSecure(String password) {
    return password.length > 6;
  }

  /// 3. Calculadora Descuento
  /// Recibe precio y % descuento. Retorna el precio final calculado.
  static double calculateDiscount(double price, double discountPercentage) {
    double discount = price * (discountPercentage / 100);
    return price - discount;
  }

  /// 4. Rango Válido
  /// Recibe un número. Retorna true si está entre 1 y 10 (inclusive).
  static bool isInValidRange(int number) {
    return number >= 1 && number <= 10;
  }

  /// 5. Texto a Mayúsculas
  /// Recibe un texto y lo retorna totalmente capitalizado.
  static String toUpperCaseText(String text) {
    return text.toUpperCase();
  }
}
