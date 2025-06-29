// AS CLASSES TEM QUE SER ABERTA PARA EXTENSÃO E FECHADA PARA MODIFICAÇÃO

abstract class Funcionario {
  final bool _registraPonto = true;
  void trabalhar();
}

class Porteiro extends Funcionario {
  @override
  void trabalhar() {}
}

class Zelador implements Funcionario {
  @override
  void trabalhar() {
    print('zelador trabalhando');
    print('zelador ${!_registraPonto ? 'não' : ''} registra ponto');
  }

  @override
  final bool _registraPonto = true;
}

void main() {
  trabalhar((Zelador()));
  trabalhar(Porteiro());
}

void trabalhar(Funcionario funcionario) {
  funcionario.trabalhar();
}
