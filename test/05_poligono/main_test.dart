/*
 * Crea una única función (importante que sólo sea una) que sea capaz
 * de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 */

import 'package:retos_programacion/05_poligono/main.dart';
import 'package:test/test.dart';

void main() {
  test('Area de un triangulo', () {
    // Arrange
    const baseTriangle = 4.0;
    const alture = 3.0;

    // Act
    var result = Triangle(baseTriangle, alture);

    // Assert
    expect(result.area(), 6);
  });

  test('Area de un triangulo incorrecto', () {
    // Arrange
    const baseTriangle = 5.0;
    const alture = 7.0;

    // Act
    var result = Triangle(baseTriangle, alture);

    // Assert
    expect(result.area(), isNot(equals(6)));
  });

  test('Area de un cuadrado', () {
    // Arrange
    const baseSquare = 5.0;

    // Act
    var result = Square(baseSquare);

    // Assert
    expect(result.area(), 25);
  });

  test('Area de un cuadrado incorrecto', () {
    // Arrange
    const baseSquare = 3.0;

    // Act
    var result = Square(baseSquare);

    // Assert
    expect(result.area(), isNot(equals(25)));
  });

  test('Area de un rectangulo', () {
    // Arrange
    const baseRectagle = 3.0;
    const alture = 5.0;

    // Act
    var result = Rectangle(baseRectagle, alture);

    // Assert
    expect(result.area(), 15);
  });

  test('Area de un rectangulo incorrecto', () {
    // Arrange
    const baseRectagle = 3.0;
    const alture = 3.0;

    // Act
    var result = Rectangle(baseRectagle, alture);

    // Assert
    expect(result.area(), isNot(equals(15)));
  });
}
