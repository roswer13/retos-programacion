/*
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

import 'package:retos_programacion/fizz_buzz/main.dart';
import 'package:test/test.dart';

void main() {
  test('FizzBuzz correct', () {
    // Arrange
    var numberTotal = 15;

    // Act
    var restult = calculateFizzBuzz(numberTotal);
    var expected = [
      '1',
      '2',
      'fizz',
      '4',
      'buzz',
      'fizz',
      '7',
      '8',
      'fizz',
      'buzz',
      '11',
      'fizz',
      '13',
      '14',
      'fizzbuzz'
    ];

    // Assert
    expect(restult, expected);
  });

  test('FizzBuzz incorrect', () {
    // Arrange
    var numberTotal = 10;

    // Act
    var restult = calculateFizzBuzz(numberTotal);
    var expected = ['1', '2', '3', '4', 'buzz', '6', '7', '8', 'fizz', '10'];

    // Assert
    expect(restult, isNot(equals(expected)));
  });
}
