

void main() async{

  List<String>lista =['Deivid','Willyan'];

  Map<String,String>maps={'chave':'valor'};

  //listar o map
  // print(maps);
  //listar o valor chamando a chave
  // print(maps['chave']);

  //adicionar valor dentro do mapa

  maps.putIfAbsent('novaChave',() => 'novoValor');

  //print(maps);


  // outra forma de adicionar
  maps['novaChavedois']='teste';

  //print(maps);

  maps.remove("chave");

  //print(maps);

  //atualizar o valor da chave
  maps['novaChavedois']='teste atualizado forma 1';
  //print(maps);

  //forma 2 de atualizar
  maps.update('novaChavedois',(value)=>"teste atualizado forma 2");

  //print(maps);

  // maps.forEach((chave,valor)=>print('o valor da chave é $chave o valor do value é $valor'));

  maps.keys.forEach(print);


  // maps.values.forEach(print);


  /* for(int i=0;i<lista.length;i++){
    print(lista[i]);
  }*/
}

