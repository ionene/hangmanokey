class Dictionary {
  /*
   * #1. Se puede tener:
   * (1) una lista de palabras fija
   * (2) un fichero de texto con las palabras
   *     p.ej. descargado de https://random-word-api.herokuapp.com/all
   * (3) acceso a un service REST que devuelva una palabra aleatoria
   *     p.ej. https://random-word-api.herokuapp.com/word
   * La palabra devuelta debe ser aleatoria.
   */
  String makeRandomWord() {
     List<String> aleatorio = ["desesperado", "imposible", "desorientado", "enrevesado", "incoherente", "insatisfecho", "estresado", "contraseña", "agujero", "tunel", "espacio", "oscuro", "insaciable", "frío"];
    aleatorio.shuffle();

    return aleatorio[0]; // @ionene
  }
}
