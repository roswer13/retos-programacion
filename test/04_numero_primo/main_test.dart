/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 */

import 'package:retos_programacion/04_numero_primo/main.dart';
import 'package:test/test.dart';

void main() {
  test("Numero primo correcto", () {
    // Arrange
    const numeberPrimo = 2;

    // Act
    var result = isPrimo(numeberPrimo);

    // Assert
    expect(result, true);
  });

  test("Numero primo incorrecto", () {
    // Arrange
    const numeberPrimo = 6;

    // Act
    var result = isPrimo(numeberPrimo);

    // Assert
    expect(result, false);
  });
}
