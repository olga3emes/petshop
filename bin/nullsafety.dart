import 'package:petshop/models/cliente.dart';

void main(){


String? nombre = "Rafa";
nombre = "Mónica";
nombre=null;


var cliente1 = Cliente(1,"Fermin", "fermain@email.com", "+34684536234",null);

print(cliente1.direccion?.length);

print(cliente1.direccion ??= 'Calle Miravientos S/N');
print(cliente1.telefono ?? 'Sin teléfono');
print(cliente1.direccion);


List<String>? vacunas;

print(vacunas?.length);

}