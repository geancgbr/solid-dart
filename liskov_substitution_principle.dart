// CLASSES DERIVADAS DEVEM PODER SER SUBSTIUÍDAS POR SUAS CLASSES BASES

abstract class IUsuario {
  void login();
}

abstract class IUsuarioComDashboard extends IUsuario {
  void acessarDashboard();
}

class UsuarioPadrao implements IUsuarioComDashboard {
  @override
  void login() {
    print('Usuário comum logado.');
  }

  @override
  void acessarDashboard() {
    print('Dashboard padrão aberto.');
  }
}

class UsuarioAdmin implements IUsuario {
  @override
  void login() {
    print('Admin logado.');
  }

  void mostrarDashboard(IUsuarioComDashboard usuario) {
    usuario.acessarDashboard();
  }

  void main() {
    var comum = UsuarioPadrao();
    mostrarDashboard(comum);

    var admin = UsuarioAdmin();
    admin.login();
  }
}