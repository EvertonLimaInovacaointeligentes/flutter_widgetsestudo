import 'dart:convert';

class Instagram {
  final String titulo;
  final String subtitulo;
  final String foto;

  Instagram({
    required this.titulo,
    required this.subtitulo,
    required this.foto,
  });

  Map<String, dynamic> toMap() {
    return {'titulo': titulo, 'subtitulo': subtitulo, 'foto': foto};
  }

  factory Instagram.fromMap(Map<String, dynamic> map) {
    return Instagram(
      titulo: map["titulo"] ?? "",
      subtitulo: map["subtitulo"] ?? "",
      foto: map["foto"] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory Instagram.fromJson(String source) =>
      Instagram.fromMap(json.decode(source));
}
