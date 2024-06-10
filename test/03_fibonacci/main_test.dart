/*
 * Escribe un programa que imprima los 50 primeros números de la sucesión
 * de Fibonacci empezando en 0.
 * - La serie Fibonacci se compone por una sucesión de números en
 *   la que el siguiente siempre es la suma de los dos anteriores.
 *   0, 1, 1, 2, 3, 5, 8, 13...
 */

import 'package:retos_programacion/03_fibonacci/main.dart';
import 'package:test/test.dart';

void main() {
  test('Fibonacci success', () {
    // Arrange
    const numberCycle = 5;

    // Act
    var result = calculateFibonacci(numberCycle);
    const expected = [0, 1, 1, 2, 3];

    // Assert
    expect(result, expected);
  });

  test('Fibonacci incorrect', () {
    // Arrange
    const numberCycle = 5;

    // Act
    var result = calculateFibonacci(numberCycle);
    const expected = [0, 1, 1, 2, 5, 7];

    // Assert
    expect(result, isNot(equals(expected)));
  });
}
