// SEMPRE DEPENDER DE ABSTRAÇÕES E NÃO CLASSES CONCRETAS

import "package:dio/dio.dart";
import 'package:http/http.dart' as http;

abstract class IHttpClient {
  get(String url);
}

class HttpClient implements IHttpClient {
  final client = http.Client();

  @override
  get(String url) {
    client.get(Uri.parse(url));
  }
}

class DioClient implements IHttpClient {
  final Dio dio = Dio();

  @override
  get(String url) {
    dio.get(url);
  }
}

class UsuariosRepository {
  final IHttpClient client;

  UsuariosRepository(this.client);

  void getUsuarios(String url){
    client.get(url);
  }
}

void main(){
  final UsuariosRepository repository = UsuariosRepository(HttpClient());

  repository.getUsuarios('url');
}
