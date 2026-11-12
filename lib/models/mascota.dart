
class Mascota {

  int _id;
  String _nombre;
  String _especie;
  int _edad;
  double _precio;
  bool _disponible;

  Mascota(
    this._id,
    this._nombre,
    this._especie,
    this._edad,
    this._precio,
    this._disponible
  );

  Mascota.vacia(): _id=0, _nombre="", _especie="", _edad=0, _precio=0.0, _disponible=false;



  int get id => _id;
  String get nombre => _nombre;
  String get especie => _especie;
  int get edad => _edad;
  double get precio => _precio;
  bool get disponible => _disponible;

  set id(int valor) {
    if (valor > 0)
      _id = valor;
  }
  set nombre(String valor) {
    if (valor.isNotEmpty)
      _nombre = valor;
  }
  set especie(String valor) {
    if (valor.isNotEmpty)
      _especie = valor;
  }

  set edad(int valor) {
    if (valor >= 0)
      _edad = valor;
  }

  set precio(double valor) {
    if (valor >= 0)
      _precio = valor;
  }

  set disponible(bool valor) {
    _disponible = valor;
  }
    void mostrarInformacion(){
      print(
        '$nombre ($especie) - $edad años - $precio €'
      );
    }
    @override
    String toString(){
      return '$nombre ($especie)';
    }


}