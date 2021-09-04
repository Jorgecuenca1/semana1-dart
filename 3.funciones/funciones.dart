String obtenerNombre(String valor) {
  return 'valor funcion $valor';
}

String obtenerNombre2(String valor) => "jjjj $valor";
otenerNombreSinRetorno(String valor) {
  return 'valor funcion $valor';
}

String obtenerNombreFuncionNameParameter({String valor, String valor2}) {
  return 'valor funcion $valor ey $valor2';
}

var miFuncionAnonima = (String valor) {
  return valor;
};

funcionTest(String valor1, String valor3, String valor4) {}
void main() {
  print(obtenerNombre("german"));
  print(obtenerNombre2("Hola"));
  print(obtenerNombreFuncionNameParameter(valor2: 'jorge', valor: 'carlos'));
  print(miFuncionAnonima("hola"));
}
