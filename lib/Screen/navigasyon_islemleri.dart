import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B Sayfası";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Navigasyon İşlemleri",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(
                "A Sayfasına Git",
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ASayfasi()));
              },
            ),
            RaisedButton(
              child: Text(
                "B Sayfasına Git",
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BSayfasi(baslik)));
              },
            ),
            RaisedButton(
              child: Text(
                "C Sayfasına Git ve Geri Gel",
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CSayfasi()));
              },
            ),
            RaisedButton(
              child: Text(
                "D Sayfasına Git ve Veri Getir",
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DSayfasi()))
                .then((value) => {
                  debugPrint("Dönen değer $value asdas")
                });
              },
            ),
            RaisedButton(
              child: Text(
                "Login git ve geri gelme",
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/CLogin");
              },
            ),
            RaisedButton(
              child: Text(
                "Liste sayfasına git",
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/CLogin");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListeSayfasi extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "A Sayfası",
            style: TextStyle(fontSize: 34),
          )
        ],
      ),
    );
  }

}
class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "A Sayfası",
            style: TextStyle(fontSize: 34),
          )
        ],
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String _baslik;

  BSayfasi(this._baslik);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _baslik,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "A Sayfası",
            style: TextStyle(fontSize: 34),
          )
        ],
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        debugPrint("will çalıştı");
        Navigator.pop(context,false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "D Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "D Sayfası",
              style: TextStyle(fontSize: 34),
            ),
            RaisedButton(
              child: Text("Geri Dön ve Veri Gönder"),
              onPressed: () {
                Navigator.pop(context,true);
              },
            )
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "C Sayfası",
            style: TextStyle(fontSize: 34),
          ),
          RaisedButton(
            child: Text("Geri Dön"),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

class LoginSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        debugPrint("will çalıştı");
        Navigator.pop(context,false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "D Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "D Sayfası",
              style: TextStyle(fontSize: 34),
            ),
            RaisedButton(
              child: Text("Geri Dön ve Veri Gönder"),
              onPressed: () {
                Navigator.pop(context,true);
              },
            )
          ],
        ),
      ),
    );
  }
}