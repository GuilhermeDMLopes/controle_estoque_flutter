
class Fornecedor{

  int? id;
  String? titulo;
  String? local;
  String? data;

  Fornecedor(this.titulo, this.local, this.data);

  Fornecedor.fromMap(Map map){
    this.id = map["id"];
    this.titulo = map["titulo"];
    this.local = map["local"];
    this.data = map["data"];

  }

  Map toMap(){

    Map<String, dynamic> map = {
      "titulo" : this.titulo,
      "local" : this.local,
      "data" : this.data,
    };

    if( this.id != null ){
      map["id"] = this.id;
    }

    return map;

  }

}