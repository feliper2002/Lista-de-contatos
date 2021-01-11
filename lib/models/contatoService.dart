import 'dart:math';

import 'package:lista_de_contatos/models/user.dart';

class ContatoService {
  var rdn = Random();
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

  int nasc(int min, int max) => min + rdn.nextInt(max - min);

  List<User> userList = [];

  List<User> getAll() {
    for (int i = 0; i < max; i++) {
      var primeiroNome = nome[rdn.nextInt(nome.length)];
      var sobrenome = sobreNome[rdn.nextInt(sobreNome.length)];
      var aniversario = aniversarios[rdn.nextInt(aniversarios.length)];
      var idade = rdn.nextInt(90);
      User usuario = new User(
        nome: '$primeiroNome $sobrenome',
        idade: idade,
        telefone: telefones[rdn.nextInt(telefones.length)],
        email: emails[rdn.nextInt(emails.length)],
        dataNascimento: aniversario,
        peso: rdn.nextInt(100),
      );
      userList.add(usuario);
    }
    return userList;
  }
}
