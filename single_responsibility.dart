// UMA CLASSE DEVE SER RESPONSÁVEL POR APENAS UMA COISA

class Pagamentos {
  void pagar(){
    print('pagamento realizado');
    Comprovantes.gerarComprovante();
  }
}

class Comprovantes {
  static void gerarComprovante(){
    print('gerarando comprovantes');
  }
}

void main(){
  final Pagamentos pagamentos = Pagamentos();
  pagamentos.pagar();
}