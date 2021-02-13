import 'package:lista_de_contatos/pages/contact.dart';
import 'package:lista_de_contatos/models/contatoService.dart';
import 'package:lista_de_contatos/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_de_contatos/styles/textStyle.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  ContatoService ctn = ContatoService();
  List<User> contatos = [];

  @override
  void initState() {
    super.initState();
    contatos = ctn.getAll();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ListView.builder(
            itemCount: contatos.length,
            itemBuilder: (_, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactModel(
                              user: contatos,
                              index: index,
                            )),
                  );
                },
                leading: CircleAvatar(
                  child: Text(
                    contatos[index].nome[0],
                    style: contatoAvatarFirstLetterName,
                  ),
                  radius: 24,
                  backgroundColor: Colors.grey[400],
                ),
                title: Text(contatos[index].nome),
                subtitle: Text(contatos[index].telefone),
              );
            },
          ),
        ),
      ),
    );
  }
}
