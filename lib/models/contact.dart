import 'package:lista_de_contatos/styles/textStyle.dart';
import 'package:lista_de_contatos/utils/user.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ContactModel extends StatelessWidget {
  final List<User> user;
  final int index;
  ContactModel(this.user, this.index);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(user[index].nome, style: contactNameAppBar),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 120,
                ),
                SizedBox(height: 20),
                Text(user[index].nome, style: contactNameAppBar),
                SizedBox(height: 10),
                Container(
                  height: MediaQuery.of(context).size.height / 1.98,
                  width: double.infinity,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(user[index].telefone),
                            subtitle: Text('Mobile | Estado'),
                          ),
                          ListTile(
                            title: Text('Email'),
                            subtitle: Text(user[index].email),
                          ),
                          Divider(thickness: 1.5),
                          ListTile(
                            title: Text('Nascimento'),
                            subtitle: Text(DateFormat('d MMM y')
                                .format(user[index].nascimento)
                                .toString()),
                          ),
                          ListTile(
                            title: Text('Peso'),
                            subtitle: Text(user[index].peso.toString() + ' Kg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
