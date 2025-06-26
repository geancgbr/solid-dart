// NENHUMA CLASSE DEVE SER FORÇADA A DEPENDER DE MÉTODOS QUE NÃO UTILIZA

abstract class IUsuarioPadrao {
  void login();
}

abstract class IUsuarioAdmin {
  void acessarAreaRestrita();
}

class UsuarioPadrao implements IUsuarioPadrao {
  @override
  void login(){
    print('realizando login');
  }
}

class UsuarioAdmin implements IUsuarioPadrao, IUsuarioAdmin {
  @override
  void acessarAreaRestrita(){
    print('acessando área restrita');
  }
  @override
  void login(){
    print('realizando');
  }
}

void main(){

  var usuario = UsuarioAdmin();
  usuario.login();
  usuario.acessarAreaRestrita();
}