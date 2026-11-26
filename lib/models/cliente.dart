
class Cliente {

  int id;
  String nombre;
  String email;
  String? telefono; 
  String? direccion;


  Cliente(
    this.id,
    this.nombre,
    this.email,
    this.telefono,
    this.direccion,
  );

  @override
  String toString(){
    return '$nombre ($email) - ${telefono ?? "Tlfn no disponible"} - ${direccion ?? "Dirección no indicada"} '; 
  }

  

}