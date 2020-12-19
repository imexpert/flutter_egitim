import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridViewOrnek extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount : 3
      ),
      itemBuilder: (BuildContext ctx, int index)
      {
        return Container(
          alignment: Alignment.center,
          color : Colors.teal[100 * (index % 9)],
          child: Text(
            "Merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }

}

/*
* return GridView.count(
      crossAxisCount: 3,
      primary: false,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter",textAlign: TextAlign.center,),
        )
      ],
    );
* */