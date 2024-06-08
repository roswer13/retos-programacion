/*
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

String fizzbuzz = 'fizzbuzz';
String fizz = 'fizz';
String buzz = 'buzz';

List<String> calculateFizzBuzz(int numberTotal) {
  List<String> fizzBuzzList = [];

  for (int i = 1; i <= numberTotal; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print(fizzbuzz);
      fizzBuzzList.add(fizzbuzz);
    } else if (i % 3 == 0) {
      print(fizz);
      fizzBuzzList.add(fizz);
    } else if (i % 5 == 0) {
      print(buzz);
      fizzBuzzList.add(buzz);
    } else {
      print(i);
      fizzBuzzList.add(i.toString());
    }
  }

  return fizzBuzzList;
}

void main() {
  calculateFizzBuzz(100);
}
