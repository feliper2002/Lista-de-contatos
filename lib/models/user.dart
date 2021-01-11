import 'dart:math';

class User {
  String nome;
  String email;
  DateTime dataNascimento = DateTime.now();
  int idade;
  int peso;
  int randomId = Random().nextInt(100);
  String telefone;

  User({
    this.email,
    this.dataNascimento,
    this.idade,
    this.nome,
    this.peso,
    this.randomId,
    this.telefone,
  });
}
