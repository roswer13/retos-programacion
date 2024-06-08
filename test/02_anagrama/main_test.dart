/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

import 'package:retos_programacion/02_anagrama/main.dart';
import 'package:test/test.dart';

void main() {
  test('Anagrama correct', () {
    // Arrange
    const initalWord = 'cara';
    const wordToCompare = 'arca';

    // Act
    var result = isAnagrama(initalWord, wordToCompare);

    // Assert
    expect(result, true);
  });

  test('Anagrama incorrect', () {
    // Arrange
    const initalWord = 'cara';
    const wordToCompare = 'esto';

    // Act
    var result = isAnagrama(initalWord, wordToCompare);

    // Assert
    expect(result, false);
  });

  test('Anagrama incorrect by length', () {
    // Arrange
    const initalWord = 'cara';
    const wordToCompare = 'arcas';

    // Act
    var result = isAnagrama(initalWord, wordToCompare);

    // Assert
    expect(result, false);
  });
}
