import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListeOrnek extends StatelessWidget {
  List<Ogrenci> ogrenciler = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();

    // TODO: implement build
    return ListView.separated(
      separatorBuilder: (context, index) {
        if (index % 4 == 0 && index != 0) {
          return Container(
            height: 2,
            color: Colors.blue,
          );
        } else {
          return Divider();
        }
        return Divider();
      },
      itemCount: 20,
      itemBuilder: (context, index) => Card(
        color: index % 2 == 0 ? Colors.red.shade50 : Colors.orange.shade50,
        elevation: 4,
        child: ListTile(
          leading: Icon(Icons.perm_contact_calendar),
          title: Text(ogrenciler[index]._isim),
          subtitle: Text(ogrenciler[index]._aciklama),
          trailing: Icon(Icons.add),
          onTap: () {
            debugPrint("$index");
            Fluttertoast.showToast(
                msg: ogrenciler[index].toString(),
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);

            alertDialogGoster(context);
          },
          onLongPress: () {
            debugPrint("Uzun basılan $index");
            Fluttertoast.showToast(
                msg: "Uzun basılan $index",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
        ),
      ),
    );
  }

  void ogrenciVerileriniGetir() {
    ogrenciler = List.generate(
        300,
        (index) => Ogrenci("Öğrenci $index", "Öğrenci açıklama $index",
            index % 2 == 0 ? true : false));
  }

  void alertDialogGoster(BuildContext ctx) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text(
              "Alert Dialog Başlık",
            ),
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                Text("Alert Dialog İçeriği"),
                Text("Alert Dialog İçeriği"),
                Text("Alert Dialog İçeriği"),
                Text("Alert Dialog İçeriği"),
                Text("Alert Dialog İçeriği"),
              ],
            )),
            actions: [
              ButtonTheme.bar(
                child: ButtonBar(
                  children: [
                    FlatButton(
                      child: Text("Tamam"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("İptal"),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    )
                  ],
                ),
              )
            ],
          );
        });
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    // TODO: implement toString
    return "Seçilen Öğrenci Adı : $_isim, Açıklaması : $_aciklama";
  }
}
