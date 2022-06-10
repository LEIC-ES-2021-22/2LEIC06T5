// To parse this JSON data, do
//
//     final restaurant = restaurantFromJson(jsonString);

import 'dart:convert';

List<Restaurant> restaurantFromJson(String str) => List<Restaurant>.from(json.decode(str).map((x) => Restaurant.fromJson(x)));

String restaurantToJson(List<Restaurant> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Restaurant {
  Restaurant({
    this.codigo = 0,
    this.descricao = "",
    this.horario = "",
    this.ementas = const <Ementa>[],
  });

  int codigo;
  String descricao;
  String horario;
  List<Ementa> ementas;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    codigo: json["codigo"],
    descricao: json["descricao"],
    horario: json["horario"],
    ementas: List<Ementa>.from(json["ementas"].map((x) => Ementa.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "codigo": codigo,
    "descricao": descricao,
    "horario": horario,
    "ementas": List<dynamic>.from(ementas.map((x) => x.toJson())),
  };
}

class Ementa {
  Ementa({
    this.estado = "",
    this.data = "",
    this.pratos = const <Prato>[],
  });

  String estado;
  String data;
  List<Prato> pratos;

  factory Ementa.fromJson(Map<String, dynamic> json) => Ementa(
    estado: json["estado"],
    data: json["data"],
    pratos: List<Prato>.from(json["pratos"].map((x) => Prato.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "estado": estado,
    "data": data,
    "pratos": List<dynamic>.from(pratos.map((x) => x.toJson())),
  };
}


class Prato {
  Prato({
    this.descricao = "",
    this.tipo = 0,
    this.tipoDescr = "",
  });

  String descricao;
  int tipo;
  String tipoDescr;

  factory Prato.fromJson(Map<String, dynamic> json) => Prato(
    descricao: json["descricao"],
    tipo: json["tipo"],
    tipoDescr: json["tipo_descr"],
  );

  Map<String, dynamic> toJson() => {
    "descricao": descricao,
    "tipo": tipo,
    "tipo_descr": tipoDescr,
  };
}

/*
class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}*/

