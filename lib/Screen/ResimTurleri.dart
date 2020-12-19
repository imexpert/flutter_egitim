import 'package:flutter/material.dart';

class ResimTurleri extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }

}