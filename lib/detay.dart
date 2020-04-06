import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  //sayfalar arası veri yollama
  var imgPath;

  //constructor
  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(15),
            elevation: 4,
            child: Container(
              height: 230,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white30),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                  image: AssetImage("assets/dress.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "LAMINATED",
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Louis Vuitton",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width-180,
                            child: Text(
                              "One button V-neck sling long-sleeved waist female stitching dress",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Montserrat",
                                  color: Colors.grey[700]),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 1, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("\$6500", style: TextStyle(fontFamily: "Montserrat", fontSize: 22), ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: FloatingActionButton(
                            onPressed: (){},
                            child: Icon(Icons.arrow_forward_ios),
                            backgroundColor: Colors.green[700],
                          ),
                        )
                      ],

                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
