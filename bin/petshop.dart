import 'package:petshop/database/supabase_client.dart';
import 'package:petshop/models/mascota.dart';
import 'package:petshop/models/cliente.dart';
import 'package:petshop/models/pedido.dart';
import 'package:petshop/services/venta_service.dart';



void main() async {
  final mascota1 = Mascota(4, 'Tod', 'zorro', 1, 1000.0, true);
  mascota1.mostrarInformacion();
  print(mascota1);
  final mascota2 = Mascota(5, 'John', 'perro', 9, 100.0, true);
  mascota1.mostrarInformacion();
  print(mascota2);

  final cliente1 = Cliente(1,'Monica E.', 'monica@email.com');

  final pedido1 = Pedido(1,cliente1,mascota2, DateTime.now());

  print(pedido1.toString());

  pedido1.mostrarResumen();


  // var calculo1= calcularIVA(100.0);
  // print(calculo1);

  // var calculo2 = calcularPrecioFinal(100, 5);
  // print(calculo2);
  // var calculo3 = calcularVenta( descuento:5.5,precio:100,);
  // print(calculo3);
  // var calculo4 = calcularVenta2(precio: 90.0);
  // print(calculo4);
  // var calculo5 = calcularVenta2(precio: 90.0, descuento: 7.0);
  // print(calculo5);





  
  //Comprobación funcionamiento BBDD
  // var supabase = DatabaseConfig.client;
  // final mascotas = await supabase.from('mascotas').select();
  // print(mascotas);

 
}
