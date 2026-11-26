import 'package:petshop/database/supabase_client.dart';
import 'package:petshop/extensions/precio_extension.dart';
import 'package:petshop/models/animal.dart';
import 'package:petshop/models/ave.dart';
import 'package:petshop/models/caja.dart';
import 'package:petshop/models/gato.dart';
import 'package:petshop/models/mascota.dart';
import 'package:petshop/models/cliente.dart';
import 'package:petshop/models/pedido.dart';
import 'package:petshop/models/perro.dart';
import 'package:petshop/models/pez.dart';
import 'package:petshop/repositories/repository.dart';
import 'package:petshop/services/venta_service.dart';

void main() async {
  final mascota1 = Mascota(4, 'Tod', 'zorro', 1, 1000.0, true,null);
  mascota1.mostrarInformacion();
  print(mascota1);
  final mascota2 = Mascota(5, 'John', 'perro', 9, 100.0, true,null);
  mascota1.mostrarInformacion();
  print(mascota2);

  final cliente1 = Cliente(1, 'Monica E.', 'monica@email.com',null,null);

  final pedido1 = Pedido(1, cliente1, mascota2, DateTime.now());

  print(pedido1.toString());

  pedido1.mostrarResumen();

  final coco = Perro("Coco", 4, "Labrador-Mastín");

  coco.mostrarFicha();
  coco.emitirSonido();

  List<Animal> animales = [
    Perro("Lala", 2, "Pastor Alemán"),
    Ave("Piolin", 20),
    Pez("Burbuja", 1),
    Gato("Tom", 15),
  ];

  for (final animal in animales) {
    animal.mostrarFicha();
    animal.emitirSonido();
  }

  if (animales[2] is Gato) {
    print("Es un gato");
  } else if (animales[2] is Perro) {
    print("Es un perro");
  } else if (animales[2] is Animal) {
    print("Es Ave o Pez");
  }

  List<Mascota> catalogo = [
    Mascota(1, 'Toby', 'Perro', 2, 500, true,null),
    Mascota(2, 'Luna', 'Gato', 1, 300, true,null),
    Mascota(3, 'Nemo', 'Pez', 3, 25, true,null),
  ];

  try {
    var perrito1 = catalogo.firstWhere((m) => m.nombre == "Toby");
    print(perrito1);
  } catch (e) {
    print("Error: "+ e.toString());
  }

  var perros = catalogo.where((m) => m.nombre == "Toby").toList();


  var nombres = catalogo.map((m) => m.nombre).toList();
  var nombres2 = perros.map((m) => m.edad).toList();//coger la edad de cada perro
  catalogo.sort((a, b) => a.edad.compareTo(b.edad));

  print(catalogo);

  Set<String>nombresCatalogo = {
    'Toby', 'Nemo', 'Piolin'
  };

nombresCatalogo.add('Coco');
Set<String> conj2={'Tom', 'Billy'};
nombresCatalogo.addAll(conj2);
nombresCatalogo.contains('Coco');

Map<String, int> stock = {
  'Pienso': 50,
  'Juguete': 30,
  'Correa': 15,
};

print(stock.toString());
print(stock.keys.toString());
print(stock.values.toString());

stock['Pienso']=40;
stock.containsKey('Juguete');

catalogo.any((m)=>m.precio > 200);
catalogo.every((m)=>m.disponible);

var total = catalogo.fold<double>(0, (acum, mascota)=>acum +mascota.precio);

print(total.toEuro());


print(mascota1.precio.toEuro());

print("olga moreno martín".split(" ").map((m)=>m.capitalizar()));

print(DateTime.now());
print(DateTime.now().formatoSimple());

print(mascota1.esCara());

print(mascota2.precio.aplicarDescuento(10));

var caja1 = Caja<int>(1);
var caja2 = Caja<String>("Fermin");

print(caja2.obtener());

final mascotaRepository= Repository<Mascota>();
var mascota6=Mascota(6, "Blue", "Medusa", 2, 3000.9, true, null);
mascotaRepository.add(mascota6);

print(mascotaRepository.getAll().toString());


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
