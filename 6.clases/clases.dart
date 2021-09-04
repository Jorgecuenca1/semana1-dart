import 'dart:html';

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

  Padre({required this.hijos}) : super('carlos', 'hola', 60);
}

abstract class Vehiculo {
  String? placa;
  bool vehiculoEncendido();
}

class Taxi extends Vehiculo with Terrestre {
  bool vehiculoEncendido() => true;
}

class Lancha extends Vehiculo with Terrestre, Acuatico {
  bool vehiculoEncendido() => true;
}

mixin Terrestre {
  int? llantas;
  int? kilometraje;
  tipoDeVehiculo() {
    return "Terrestre";
  }
}
mixin Acuatico {
  int? motor;
  int? leva;
  tipoDeVehiculo() {
    return "Acuatico";
  }
}

class Empleado implements Persona {
  @Override
  String apellido;
  @override
  int edad;
  @override
  String name;
  Empleado(this.nombre, this.apellido, this.edad);
}

void main() {
  var persona = Persona('carlos', 'Herrera', 60);
  var elPadre = Padre(hijos: 7);

  var vehiculoTaxi = Taxi();
  vehiculoTaxi.llantas = 4;
  var lalancha = Lancha();
  lalancha.leva = 2;
  print(persona);
  print(persona.nombre);
  print(elPadre.nombre);
  print(vehiculoTaxi.placa);
  print(lalancha.kilometraje);
}
