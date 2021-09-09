class Persona {
  String name;
  String lastname;
  String adress;
  int phone;

  Persona(this.name, this.lastname, this.adress, this.phone);
  Persona.completo(
      {this.name = 'name',
      this.lastname = 'apellido',
      this.adress = "adress",
      this.phone = 60});
}

class Artista extends Persona {
  int? pinturas;
  String? tecnicas;

  Artista({this.pinturas, this.tecnicas})
      : super.completo(name = "name", lastname = "lastname", adress = "adress",
            phone = 60, pinturas = 3, tecnicas = "varias");
}

class Ingeniero extends Persona {
  int? experiencia;
  String? lenguaje;

  Ingeniero({this.experiencia, this.lenguaje})
      : super.completo(name = "name", lastname = "lastname", adress = "adress",
            phone = 60, experiencia = 3, lenguaje = "python");
}

class Doctor extends Persona {
  int? titulos;
  String? especialidad;

  Doctor({this.titulos, this.especialidad})
      : super.completo(name = "name", lastname = "lastname", adress = "adress",
            phone = 60, titulos = 3, especialidad = "cirujano");
}

class Atleta extends Persona {
  String? deporte;

  Atleta({this.deporte})
      : super.completo(name = "name", lastname = "lastname", adress = "adress",
            phone = 60, deporte = "atletismo");
}

void main() {}
