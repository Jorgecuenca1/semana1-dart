void main() {
  int edadInt = 23;
  num puntosDouble = 10.2;
  num edadNum = puntosDouble;
  print(edadNum);

  var texto1 = 'valor con commiilla simple';
  var texto2 = "valor comillas dobles";
  var texto3 = "jjsjdjsjdjsjsdjsdjjsdjsd";
  var interpolacion = "hola como estan esto es : ${texto2}";
  var texto6 = "este vlor se ne con el siguiente  " + "nnn";
  var texto7 = "me uno con " ",este otro valor";
  var VariableTipoNumero = 50;
  var texto9 =
      "interpolar texo 7 \'$texto7\' el valor de la variable tipo nuemero es $VariableTipoNumero";
  var texto10 = '''CREATE TABLE Persons(
                  PersonID int,
                  LastName varchar(255),
                  FirstName varchar(255),
                  );''';
  var texto11 = r'mostrar este caracter \';
  var texto12 = '';
  if (texto12.isEmpty) {
    print("holaaaa");
  }
  var numero1 = 4;
  if (numero1 >= 5) {
    print("decir es igual o mayor a 5");
  }
  print(texto1);
  print(texto2);
  print(texto3);
  print(interpolacion);
  print(texto9);
  print(texto10);
  print(texto11);
}
