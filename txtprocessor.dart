import '../Hangman/input.dart';

class TxtProcessor {
  static String initGuessed(String keyword) {
    var guessedLetters = "";
    for (int i = 0; i < keyword.length; i++) {
      guessedLetters = "_ $guessedLetters";
    }
    return guessedLetters;
  }

  /*
   * #3. Se está probando una nueva letra? está en la lista de intentos?
   * Si la letra no está en [a-z] o [A-Z] será falso.
   * No es sensitivo a mayúsculas y minúsculas, la 'a' y la 'A' son igual.
   */
  static bool isNewLetterInList(String letter, List<String> letterTrialList) {
    // obtendremos el valor de la tabla ASCII y de [a-z] comprenden los valores:
    //[A-Z] 65-90 mientras el intervalo de "Z" a "a" hay que cubrirlo tambien son de  [Z-a] 90-97
    //los valores de por encima de 122 ya no son letras del intervalo seleccionado.

    // Se podia usar el (((letter.compareTo("a") > 0) || .... en if  un if siguiente y trabajar con el String dado sin parsearlo.
    //  int letra = letter.codeUnitAt(0);
    //  if ((letra < 65) || (letra > 122) || ((letra > 90) && (letra < 97))) {
    //     return false;
    //}
    //  if(Input.isAletter()){} evitá la duplicacion de codigo
    if (Input.isAletter(letter) == false) {
      return false;
    }

    //Sino esta en la lista de intentos le daremos falso
    if (letterTrialList.indexOf(letter) == -1) {
      return false;
    }
    return true; // stub
  }

  /*
   * #4. Comprobar si una letra está en una palabra.
   */
  static bool isLetterInWord(String letter, String word) {
    int i = 0;
    for (i = 0; i < word.length; i++) {
      if ((word[i] == letter) != false) {
        return true;
      }
      ;
    }
    ;
    return false; //@ionene
  }

  /*
   * #5. Las letras de la lista que estén en la palabra clave
   * deben ser representadas en las posiciones que aparecen en ella.
   * Si una letra no está en la lista se representará con guión bajo.
   * Entre las letras y los guiones hay un espacio para formatearlo.
   * Ej. Si keyword = "bullseye" y la lista es ["a","b","i","s","t","e","u"]
   * devolverá "b u _ _ s e _ e"
   */
  static String guessedLetters(String keyword, List<String> letterTrialList) {
    String barraBaja = "_";
    for (int i = 0; i < keyword.length; i++) {
      if (letterTrialList.contains(keyword[i])) {
        print(keyword[i]);
      } else {
        print(barraBaja);
      }
    }
  }

  /*
   * #6. Las letras que están en la lista pero no en la palabra clave
   * deben aparecer separadas por un espacio.
   * Ej. Si keyword = "bullseye" y la lista es ["a","b","i","s","t","e","u"]
   * devolverá "a i t"
   */
  static String missedLetters(String keyword, List<String> letterTrialList) {
      var missedLetters = "";
    for (int i = 0; i < keyword.length; i++) {
      if (!letterTrialList.contains(keyword[i]){
        missedLetters += letterTrialList[i] + "";
      }
    }
    return missedLetters;
  }
}
