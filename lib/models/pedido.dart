import 'cliente.dart';
import 'mascota.dart';

class Pedido{

int _id;
Cliente _cliente;
Mascota _mascota;
DateTime _fecha;

Pedido (
  this._id,this._cliente, this._mascota, this._fecha,
);

  int get id => _id;
  Cliente get cliente => _cliente;
  Mascota get mascota => _mascota;
  DateTime get fecha => _fecha;
  
  set id(int valor) {if (valor > 0) _id = valor;}
  set cliente(Cliente valor) {_cliente = valor;}
  set mascota(Mascota valor) {_mascota = valor;}
  set fecha(DateTime valor) {_fecha = valor;}

@override
  String toString() {
   //2 formas de hacerlo
    String m= mascota.toString();
    return "${cliente.toString()} compra $m)";
  }

  void mostrarResumen(){
     print('''
          ===== PEDIDO =====
          Cliente: $cliente
          Mascota: $mascota
          Precio: ${mascota.precio} €
          Fecha: $fecha''');
  }
  

}