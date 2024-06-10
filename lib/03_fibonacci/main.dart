/*
 * Escribe un programa que imprima los 50 primeros números de la sucesión
 * de Fibonacci empezando en 0.
 * - La serie Fibonacci se compone por una sucesión de números en
 *   la que el siguiente siempre es la suma de los dos anteriores.
 *   0, 1, 1, 2, 3, 5, 8, 13...
 */

List<int> calculateFibonacci(int numberCycle) {
  List<int> result = [];
  for (var i = 0; i < numberCycle; i++) {
    if (i <= 1) {
      result.add(i);
      continue;
    }

    result.add(result[i - 2] + result[i - 1]);
  }

  return result;
}

void main() {
  print(calculateFibonacci(50));
}
