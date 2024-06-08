/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

bool isAnagrama(String initialWord, String wordToCompare) {
  if (initialWord.length != wordToCompare.length) return false;
  List<String> wordToCompareList = wordToCompare.split("");

  for (var i = 0; i < initialWord.length; i++) {
    if (!wordToCompareList.contains(initialWord[i])) return false;
    wordToCompareList.remove(initialWord[i]);
  }

  return true;
}

void main() {
  print('cara y arca es anagrama: ${isAnagrama('cara', 'arca')}');
  print('cara y esto es anagrama: ${isAnagrama('cara', 'esto')}');
}
