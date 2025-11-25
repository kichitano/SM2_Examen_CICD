import 'package:flutter_test/flutter_test.dart';
import 'package:english_app/utils/validator.dart';

/// Tests Unitarios para la clase Validator
/// Examen de CI/CD - Auditoría de Sistemas
void main() {
  group('Validator Tests -', () {

    /// TEST 1: Validar Email
    group('validateEmail -', () {
      test('debe retornar true para email válido con @ y .', () {
        expect(Validator.validateEmail('test@example.com'), true);
        expect(Validator.validateEmail('user@domain.org'), true);
        expect(Validator.validateEmail('admin@company.co.uk'), true);
      });

      test('debe retornar false para email sin @', () {
        expect(Validator.validateEmail('testexample.com'), false);
      });

      test('debe retornar false para email sin .', () {
        expect(Validator.validateEmail('test@examplecom'), false);
      });

      test('debe retornar false para email vacío', () {
        expect(Validator.validateEmail(''), false);
      });
    });

    /// TEST 2: Seguridad Contraseña
    group('isPasswordSecure -', () {
      test('debe retornar true para contraseña mayor a 6 caracteres', () {
        expect(Validator.isPasswordSecure('1234567'), true);
        expect(Validator.isPasswordSecure('passwordSegura'), true);
        expect(Validator.isPasswordSecure('abc1234'), true);
      });

      test('debe retornar false para contraseña de exactamente 6 caracteres', () {
        expect(Validator.isPasswordSecure('123456'), false);
      });

      test('debe retornar false para contraseña menor a 6 caracteres', () {
        expect(Validator.isPasswordSecure('12345'), false);
        expect(Validator.isPasswordSecure('abc'), false);
      });

      test('debe retornar false para contraseña vacía', () {
        expect(Validator.isPasswordSecure(''), false);
      });
    });

    /// TEST 3: Calculadora Descuento
    group('calculateDiscount -', () {
      test('debe calcular correctamente el precio con 10% de descuento', () {
        expect(Validator.calculateDiscount(100.0, 10.0), 90.0);
      });

      test('debe calcular correctamente el precio con 50% de descuento', () {
        expect(Validator.calculateDiscount(200.0, 50.0), 100.0);
      });

      test('debe calcular correctamente el precio con 25% de descuento', () {
        expect(Validator.calculateDiscount(80.0, 25.0), 60.0);
      });

      test('debe retornar el mismo precio con 0% de descuento', () {
        expect(Validator.calculateDiscount(150.0, 0.0), 150.0);
      });

      test('debe calcular correctamente descuentos decimales', () {
        expect(Validator.calculateDiscount(100.0, 15.5), 84.5);
      });
    });

    /// TEST 4: Rango Válido
    group('isInValidRange -', () {
      test('debe retornar true para números entre 1 y 10 inclusive', () {
        expect(Validator.isInValidRange(1), true);
        expect(Validator.isInValidRange(5), true);
        expect(Validator.isInValidRange(10), true);
      });

      test('debe retornar false para números menores a 1', () {
        expect(Validator.isInValidRange(0), false);
        expect(Validator.isInValidRange(-5), false);
      });

      test('debe retornar false para números mayores a 10', () {
        expect(Validator.isInValidRange(11), false);
        expect(Validator.isInValidRange(100), false);
      });
    });

    /// TEST 5: Texto a Mayúsculas
    group('toUpperCaseText -', () {
      test('debe convertir texto en minúsculas a mayúsculas', () {
        expect(Validator.toUpperCaseText('hola mundo'), 'HOLA MUNDO');
      });

      test('debe mantener texto ya en mayúsculas', () {
        expect(Validator.toUpperCaseText('TEXTO'), 'TEXTO');
      });

      test('debe convertir texto mixto a mayúsculas', () {
        expect(Validator.toUpperCaseText('HoLa MuNdO'), 'HOLA MUNDO');
      });

      test('debe convertir texto vacío a vacío', () {
        expect(Validator.toUpperCaseText(''), '');
      });

      test('debe manejar caracteres especiales', () {
        expect(Validator.toUpperCaseText('test@123'), 'TEST@123');
      });
    });
  });
}
