mixin Dibujar {
  int? tecnica_dibujo;
  String? especialidad;

  tipoDibujo() {
    return "Dibujar";
  }
}
mixin Leer {
  int? numlibros;
  String? categoria;

  tipoLectura() {
    return "Leer";
  }
}
mixin Ejercitarse {
  int? tiempo_ejercicio;
  String? tipo_ejercicio;

  tipoEjercicio() {
    return "Ejercitarse";
  }
}
mixin Boxear {
  int? tiempo_entrenamiento;
  String? tipo_boxeo;

  tipoEjercicio() {
    return "Boxear";
  }
}

abstract class Persona {
  String? name;
  String? lastname;
  String? adress;
  int? phone;

  String nameComplete() {
    return "$name $lastname";
  }

  String trabajo();
  Persona(this.name, this.lastname, this.adress, this.phone);
}

class Artista extends Persona with Dibujar {
  int? pinturas;
  String? tecnicas;
  String? categoria;

  Artista(String name, String lastname, String adress, int phone)
      : super(name, lastname, adress, phone);
  @override
  String trabajo() {
    return "Artista";
  }

  String tecnicapinturas() {
    return "Tecanica: $tecnicas";
  }
}

class Ingeniero extends Persona with Dibujar, Leer {
  int? experiencia;
  String? lenguaje;
  String? categoria;

  Ingeniero(String name, String lastname, String adress, int phone)
      : super(name, lastname, adress, phone);
  String trabajo() {
    return "Ingeniero";
  }

  String lenguajeprogramacion() {
    return "Lenguaje: $lenguaje";
  }
}

class Doctor extends Persona with Leer, Ejercitarse {
  int? titulos;
  String? especialidad_medica;
  String? categoria;

  Doctor(String name, String lastname, String adress, int phone)
      : super(name, lastname, adress, phone);
  String trabajo() {
    return "Doctor";
  }

  String especialidadmedica() {
    return "Especialidad: $especialidad_medica";
  }
}

abstract class Atleta extends Persona {
  String? deporte;
  int? medallas;
  int? campeonatos;

  Atleta(String name, String lastname, String adress, int phone)
      : super(name, lastname, adress, phone);
  String esatleta();
  String numeromedallas() {
    return "Medallas: $medallas";
  }
}

class Boxeador extends Persona with Ejercitarse, Boxear {
  String? liga;
  String? representante;
  int? talla;

  Boxeador(String name, String lastname, String adress, int phone)
      : super(name, lastname, adress, phone);
  String trabajo() {
    return "Boxeador";
  }

  String representantedelboxeador() {
    return "representante: $representante";
  }

  String esatleta() {
    return "SI es Atleta";
  }
}

void main() {
  Artista artista = Artista("Jorge", "Hernan", "santa Helana", 3102337052);
  artista.pinturas = 2;
  artista.tecnicas = "tecnica 1";
  artista.categoria = "categoria1";
  print(artista.trabajo());
  print(artista.tecnicapinturas());

  Ingeniero ingeniero =
      Ingeniero("Jorge", "Hernan", "santa Helana", 3102337052);
  ingeniero.experiencia = 2;
  ingeniero.lenguaje = "java";
  ingeniero.categoria = "categoria1";
  print(ingeniero.trabajo());
  print(ingeniero.lenguajeprogramacion());

  Doctor doctor = Doctor("Jorge", "Hernan", "santa Helana", 3102337052);
  doctor.titulos = 2;
  doctor.especialidad_medica = "cirujano 1";
  doctor.categoria = "categoria1";
  print(doctor.trabajo());
  print(doctor.especialidadmedica());

  Boxeador boxeador = Boxeador("Jorge", "Hernan", "santa Helana", 3102337052);
  boxeador.talla = 2;
  boxeador.liga = "tecnica 1";
  boxeador.representante = "representante";
  print(boxeador.trabajo());
  print(boxeador.representantedelboxeador());
}
