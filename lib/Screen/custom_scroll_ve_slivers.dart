import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollapsableToolbarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          // title: Text("Sliver App Bar"),
          backgroundColor: Colors.red,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: Image.asset(
              "assets/images/resim.png",
              fit: BoxFit.cover,
            ),
            title: Text("Flexible App Bar"),
          ),
        ),

        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(15),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                _dinamikElemanUretenFonksiyon,
                childCount: 10
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverFixedExtentList(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
            itemExtent: 300,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              _dinamikElemanUretenFonksiyon,
              childCount: 6
            ),
            itemExtent: 300,
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          delegate: SliverChildListDelegate(
            sabitListeElemanlari()
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          delegate: SliverChildBuilderDelegate(
              _dinamikElemanUretenFonksiyon,
            childCount: 6
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100
          ),
          delegate: SliverChildBuilderDelegate(
              _dinamikElemanUretenFonksiyon,
              childCount: 6
          ),
        ),
        // SliverGrid.count(crossAxisCount: 2,),
        // SliverGrid.extent(maxCrossAxisExtent: 200,)
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 6",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.yellow,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 7",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.cyanAccent,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 8",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 9",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      color: _rasgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        "Dinamik Liste ${++index}",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color _rasgeleRenkUret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
