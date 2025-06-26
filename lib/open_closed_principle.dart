// AS CLASSES TEM QUE SER ABERTA PARA EXTENSÃO E FECHADA PARA MODIFICAÇÃO

abstract class IFuncionario {
  final bool _registraPonto = true;
  void trabalhar();
}

class Porteiro extends IFuncionario {
  @override
  void trabalhar() {}
}

class Zelador implements IFuncionario {
  @override
  void trabalhar() {
    print('zelador trabalhando');
    print('zelador ${!_registraPonto ? 'não' : ''} registra ponto');
  }

  @override
  final bool _registraPonto = true;
}

class Funcionario {
  void trabalhar(IFuncionario funcionario) {
    funcionario.trabalhar();
  }
}

void main() {
  final Funcionario zelador = Funcionario();
  zelador.trabalhar((Zelador()));

  final Funcionario porteiro = Funcionario();
  porteiro.trabalhar(Porteiro());
}
