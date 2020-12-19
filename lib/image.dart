import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.cyan,
      accentColor: Colors.orange,
    ),
    home: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Flutter Dersleri",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.alarm,
          size: 24.0,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Image ve Buton Türleri",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FadeInImage.assetNetwork(
                              placeholder: "assets/images/loading.gif",
                              image:
                              "https://miro.medium.com/max/3960/0*HICLyAdNSIyT0ODU.jpg",
                            ),
                            Text("FadeIn Image"),
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterLogo(
                              size: 60.0,
                            ),
                            Text("FadeIn Image"),
                          ],
                        ),
                      )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                              "https://miro.medium.com/max/3960/0*HICLyAdNSIyT0ODU.jpg"),
                          Text("Network Image"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://miro.medium.com/max/3960/0*HICLyAdNSIyT0ODU.jpg"),
                            radius: 40,
                          ),
                          Text("Circle Avatar"),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/resim.png"),
                            Text("Asset Image"),
                          ],
                        ),
                      )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                              "https://miro.medium.com/max/3960/0*HICLyAdNSIyT0ODU.jpg"),
                          Text("Network Image"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://miro.medium.com/max/3960/0*HICLyAdNSIyT0ODU.jpg"),
                            radius: 40,
                          ),
                          Text("Circle Avatar"),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    ),
  ));
}
