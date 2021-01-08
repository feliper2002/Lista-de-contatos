import 'dart:math';

import 'package:atividade/utils/user.dart';

class ContatoService {
  List<User> getAll() {
    int max = 50;
    var nome = ['Mário', 'Luigi', 'Wario', 'Peach', 'Filipe'];
    var sobreNome = ['Dias', 'Fernandes', 'Castro', 'Souza', 'Deschamps'];
    var telefones = [
      '71 12345678',
      '71 11112222',
      '71 33334444',
      '71 55556666'
    ];
    List<User> userList = [];

    for (int i = 0; i < max; i++) {
      var nomeCompleto = nome[Random().nextInt(nome.length)] +
          ' ' +
          sobreNome[Random().nextInt(sobreNome.length)];
      User usuario = new User(
        nome: nomeCompleto,
        telefone: telefones[Random().nextInt(telefones.length)],
      );
      userList.add(usuario);
    }
    return userList;
  }
}

main() {
  ContatoService contatList = new ContatoService();
  contatList.getAll();
}
