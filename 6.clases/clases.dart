class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona(this.nombre, this.apellido, this.edad);
  Persona.completo(
      {this.nombre = 'name', this.apellido = 'apellido', this.edad = 60});
}

class Padre extends Persona {
  int hijos;

  Padre({this.hijos}) : super('carlos', 'hola', 60);
}

abstract class Vehiculo {
  String placa;
  bool vehiculoEncendido();
}

class Taxi extends Vehiculo {
  bool vehiculoEncendido() => true;
}

void main() {
  var persona = Persona('carlos', 'Herrera', 60);
  var elPadre = Padre(hijos: 7);
  var vehiculoTaxi = Taxi();
  print(persona);
  print(persona.nombre);
  print(elPadre.nombre);
  print(vehiculoTaxi.placa);
}
