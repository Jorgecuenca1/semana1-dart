String obtenerNombre({required String valor}) {
  try {
    if (valor == 'juan') {
      throw FormatException("El nomvre de $valor no puede ser procesado");
    }
    if (valor == 'pedro') {
      throw ("El nombre de $valor no puede ser procesado");
    }
    double variablePrueba = 5 / 10;
    return valor;
  } catch (e) {
    return "error";
  }
}

void main() {
  try {
    String resultado = obtenerNombre(valor: "juan");

    print(resultado);
  } on FormatException catch (e) {
    print("formatexception");
    print(e);
  } catch (e) {
    print("general");
    print(e);
  }
}
