abstract class Pessoa{
  String comunicar();
}

class PessoaET implements Pessoa{
  String comunicar(){
    return "ola";
  }
}

class PessoaNaoEt implements Pessoa{
  String comunicar(){
    return "bom dia";
  }
}
class Pai{
  String falar(){
    return "Girias";
  }
}

class Everton extends Pai{

}

abstract class Pagamento{
  void pagar();
}

class PagarComBoleto implements Pagamento{
  void pagar(){
    print("pagar com boleto");
  }
}
class PagarComPix implements Pagamento{
  void pagar(){
    print("pagar com pix");
  }
}


void main() {

  var everton= Everton();
  everton.falar();

  Pagamento pagamento= PagarComBoleto();
  Pagamento pagamento2= PagarComPix();
}
