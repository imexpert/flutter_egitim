import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridViewOrnek extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount : 2
      ),
      itemBuilder: (BuildContext ctx, int index)
      {
        return GestureDetector(
          onTap: (){
            debugPrint("Merhaba flutter  $index");
          },
          onDoubleTap: (){
            debugPrint("Merhaba flutter  $index");
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color : Colors.red[100 * (index % 9)],
                border: Border.all(
                    color: Colors.black,
                    width: 2
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0)
                ),
                gradient: LinearGradient(
                  colors: [Colors.red,Colors.yellow],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                image: DecorationImage(
                    image: AssetImage("assets/images/resim.png"),
                    fit: BoxFit.fill
                )
            ),
            margin: EdgeInsets.all(20),
            child: Text(
              "Merhaba Flutter",
              textAlign: TextAlign.center,
            ),
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