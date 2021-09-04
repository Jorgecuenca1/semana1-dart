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
  List<String> lista1 = [texto11, texto6];
  var lista2 = [lista1, texto6];
  lista2.add("bmw");
  var lista3 = ["chvrolet", ...lista1, ...lista2];
  var listaSet = {'mazda', 'kia', 'renault', 'renault'};
  List<dynamic> lista10 = [1, 2.0, "hola", true];
  listaSet.add("mazdados");
  listaSet.add("Hola");
  listaSet.clear();
  var maps1 = {
    'red': 'rojo',
    'blue': 'blue',
  };
  maps1.clear();
  maps1['green'] = 'verde';

  print(lista3);

  print(texto1);
  print(texto2);
  print(texto3);
  print(interpolacion);
  print(texto9);
  print(texto10);
  print(texto11);

  print(listaSet);
  print(maps1);
  maps1.forEach((as, value) {
    print(as);
  });
}
