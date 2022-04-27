class Aluno{
  final String matricula;
  final String nome;

  Aluno(this.matricula,this.nome);
}
class Aluno2{
  final String matricula;
  final String nome;

  Aluno2({required this.matricula, required this.nome});
}

class Aluno3{
  final String? matricula;
  final String? nome;
  Aluno3({this.matricula,this.nome});
}

class Aluno4{
  late String? matricula;
  late String? nome;
  Aluno4({this.matricula,this.nome});
}
class Aluno5{
  late String matricula;
  late String nome;
  Aluno5({required this.matricula, required this.nome});
}
void main() {
  var aluno1= Aluno('222','teste');
  var aluno2= Aluno2(matricula: '222',nome: 'teste');
  var aluno3= Aluno3();
  var aluno4= Aluno4();
  var aluno5= Aluno5(matricula: "222",nome: "teste");
}
