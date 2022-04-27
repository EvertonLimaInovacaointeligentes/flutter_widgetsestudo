
void main() async{

  Future<String> cepFuturo= getCepByName("Rua JK");
  late String cep;
  //cepFuturo.then((result)=>cep=result);
  cep= await cepFuturo;

  print(cep);
}
//external service
Future<String> getCepByName(String name){
  return Future.value("54450050");
}