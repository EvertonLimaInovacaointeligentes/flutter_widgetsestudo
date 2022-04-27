class Aluno{
  late String _matricula;
  late String _nome;
  String get matricula=>_matricula;
  String get nome=>_nome;
  void setmatricula(String txt)=>_matricula=txt;
  void setnome(String txt)=>_nome=txt;
  Aluno(matricula,nome);
}

void main() {
  var aluno1= Aluno('222','teste');

}
