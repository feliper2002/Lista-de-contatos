import 'package:atividade/models/contact.dart';
import 'package:atividade/utils/contatoService.dart';
import 'package:atividade/utils/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  ContatoService ctn = ContatoService();
  List<User> contatos = [];

  // openContact(List<User> contatos, int index) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => ContactModel(contatos, index)),
  //   );
  // }

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
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactModel(contatos, index)),
                  );
                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.grey[400],
                  ),
                  title: Text(contatos[index].nome),
                  subtitle: Text(contatos[index].telefone),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// InkWell(
//                 highlightColor: Colors.blue[300],
//                 onTap: () {},
//                 child: Card(
//                   elevation: 3,
//                   child: ListTile(
//                     leading: CircleAvatar(
//                       radius: 30,
//                       backgroundColor: Colors.grey,
//                     ),
//                     tileColor: Colors.white,
//                     title: Text(
//                       contatos[index].nome,
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                     subtitle: Text(contatos[index].telefone),
//                   ),
//                 ),
//               )
