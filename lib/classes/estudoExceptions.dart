
void main() {
  try{
    // print((2/0).toInt());
    Login login= Login();
    login.logar();
  }
  on CustomErro catch(e){
    print('falhou ao logar');
  }
  catch(e, stackStrace){
    print('outro erro');
    //print(stackStrace);
    //print("falhou ao logar")
    //propagar o erro subir no metodo
    //rethrow;
    //tratar uma exception
    //throw Exception("ocorreu um erro xpto");
    //throw CustomErro("Erro customizado");
  }
  finally{
    print('finalizou');
  }
}
class CustomErro implements Exception{
  final String? erro;

  CustomErro({this.erro});
}
class Login{
  void logar(){
    String user='admin';
    String senha='123';

    if(senha.length<=3)throw Exception();

  }
}

