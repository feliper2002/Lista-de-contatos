import 'dart:math';

import 'package:atividade/utils/user.dart';

class ContatoService {
  int max = 50;
  var nome = ['Mário', 'Luigi', 'Wario', 'Peach', 'Filipe'];
  var sobreNome = ['Dias', 'Fernandes', 'Castro', 'Souza', 'Deschamps'];
  var telefones = ['71 12345678', '71 11112222', '71 33334444', '71 55556666'];
  var emails = [
    'teste123@gmail.com',
    'dartteste123@gmail.com',
    'umemailqualquer@gmail.com',
    'issoesoumemail@gmail.com',
    "luigi7878@outlook.com",
    "peach_d2.com.br",
    "mario.sd8@outlook.com",
    "wario@gmail.com.br",
    "nick_32@gmail.com",
    "jannepereira@gmail.com",
    "karaden@gmail.com",
    "heloiza_89@gmail.com",
    "flilipedsh@outlook.com.br",
  ];
  var aniversarios = [
    DateTime.now(),
    DateTime.now(),
    DateTime.now(),
    DateTime.now(),
    DateTime.now(),
  ];

  var idade = [20, 15, 18, 35, 25, 19, 22, 45, 23, 34];
  var peso = [55, 78, 90, 98, 110, 50, 45, 52, 75, 62, 35];

  List<User> userList = [];
  List<User> getAll() {
    for (int i = 0; i < max; i++) {
      var nomeCompleto = nome[Random().nextInt(nome.length)] +
          ' ' +
          sobreNome[Random().nextInt(sobreNome.length)];
      User usuario = new User(
        nome: nomeCompleto,
        telefone: telefones[Random().nextInt(telefones.length)],
        email: emails[Random().nextInt(emails.length)],
        nascimento: aniversarios[Random().nextInt(aniversarios.length)],
        peso: peso[Random().nextInt(peso.length)],
      );
      userList.add(usuario);
    }
    return userList;
  }
}

// main() {
//   ContatoService contatList = new ContatoService();
//   contatList.getAll();
// }
