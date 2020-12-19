import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget {
  //Liste için veri kaynağı oluştur
  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> listeAltBaslik = List.generate(300, (index) => "Liste elemanı alt başlık $index");

  @override
  Widget build(BuildContext context) {

    return  ListView(
      children: listeNumaralari
      .map((e) => Column(
        children: [
          Container(
            child: Card(
              color: Colors.teal.shade50,
              margin: EdgeInsets.all(10),
              elevation: 10,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  child: Icon(Icons.people),
                ),
                title: Text("Liste Elemanı $e"),
                subtitle: Text(listeAltBaslik[e]),
                trailing: Icon(Icons.add),
              ),
            ),
          ),
          Divider(
            color: Colors.orange,
            height: 32,
            indent: 20,
          )
        ],
      )).toList(),
    );
  }
}

/*
*
* */