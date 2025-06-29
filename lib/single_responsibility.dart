// UMA CLASSE DEVE SER RESPONSÁVEL POR APENAS UMA COISA

class Pagamentos {
  static void pagar() {
    print('pagamento realizado');
    Pagamentos.pagar();
  }
}

class Comprovantes {
  static void gerarComprovante() {
    print('gerarando comprovantes');
    Comprovantes.gerarComprovante();
  }
}

void main() {}
