import 'animal.dart';

class Perro extends Animal{
  final String raza;

  Perro(String nombre, int edad, this.raza):
  super(nombre,edad);

  @override
  void emitirSonido(){
    print('Guau');
  }

  @override
  void mostrarFicha() {
    print("PERRO: $nombre - $edad años");
  }


}