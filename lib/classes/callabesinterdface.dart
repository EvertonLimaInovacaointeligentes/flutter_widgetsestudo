
import 'dart:convert';
void main() {
  //posso ocultar o metodo call chamando somente a classe
  //utilizando o callable interface
  BuscarAlunos buscarAlunos =BuscarAlunos();

  buscarAlunos();
}

class BuscarAlunos{
  void call()=> print('everton Lima, malu joice');
}
