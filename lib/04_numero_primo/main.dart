/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 */

bool isPrimo(int number) {
  for (var i = 2; i < number; i++) {
    if (number % i == 0) return false;
  }

  return true;
}

void main() {
  for (var i = 1; i < 100; i++) {
    if (!isPrimo(i)) continue;
    print(i);
  }
}
