import 'package:atividade/utils/contatoService.dart';
import 'package:atividade/utils/user.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  List<User> contatos = [];

  @override
  void initState() {
    super.initState();
    ContatoService ctn = ContatoService();
    setState(() {
      contatos = ctn.getAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ListView.builder(
            itemCount: contatos.length,
            itemBuilder: (_, int index) {
              return InkWell(
                highlightColor: Colors.blue[300],
                onTap: () {},
                child: Card(
                  elevation: 3,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                    ),
                    tileColor: Colors.white,
                    title: Text(
                      contatos[index].nome,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(contatos[index].telefone),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
