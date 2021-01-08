import 'dart:math';

class User {
  String nome;
  String email;
  DateTime nascimento = DateTime.now();
  int peso;
  int randomId = Random().nextInt(100);
  String telefone;

  User({
    this.email,
    this.nascimento,
    this.nome,
    this.peso,
    this.randomId,
    this.telefone,
  });
}
