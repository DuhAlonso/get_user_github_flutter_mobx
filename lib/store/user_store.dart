import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {

  @observable
  String userName;
  @observable
  String name = 'Flutterando';
  @observable
  String bio = 'O maior canal de Flutter do brasil!!!';
  @observable
  String avatarUrl = 'https://bre.is/8TZTmLyc';

  @action
   getUser(user) async {
    http.Response response = await http.get("https://api.github.com/users/$user"); // Da classe http, fazer a requisição
    Map<String, dynamic> dados = json.decode(response.body); // Transfromei o retorno da requisição em um mapa
    name = dados["name"];
    avatarUrl = dados["avatar_url"];
    bio = dados["bio"];
    if(bio == null){
      bio = 'Não tenho bio 😔';
    }
  }
}