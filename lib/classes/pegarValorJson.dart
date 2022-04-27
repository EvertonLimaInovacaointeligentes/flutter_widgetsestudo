
import 'dart:convert';
void main() {
  //criando json na mao
  /*String json='''{
  "usuario":"everton.com",
  "senha":123456,
  "permissoes":[
    "owner","admin"
  ]
  }''';

  print(json);
  Map resultJson = jsonDecode(json);

  print(resultJson['permissoes'][0]);*/
  //criando um mapa e transformando em json
  Map mapa ={
    "nome":"everton.com",
    "pass":123,
    "permissions":['owner','admin']

  };

  print(jsonEncode(mapa));
}

