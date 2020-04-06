import 'package:flutter/material.dart';

import 'detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(controller: tabController, tabs: [
          Tab(
              icon: Icon(
            Icons.more,
            color: Colors.grey,
            size: 16,
          )),
          Tab(
              icon: Icon(
            Icons.play_arrow,
            color: Colors.grey,
            size: 16,
          )),
          Tab(
              icon: Icon(
            Icons.navigation,
            color: Colors.grey,
            size: 16,
          )),
          Tab(
              icon: Icon(
            Icons.supervised_user_circle,
            color: Colors.grey,
            size: 16,
          )),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //gölge
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 22,
              color: Colors.orange,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.green[200],
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          //üst taraftaki profil listesi
          Container(
            // color: Colors.deepPurpleAccent[100],
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              //elemanların soldan sağa gitmesi için
              children: <Widget>[
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
              ],
            ),
          ),
          //Card
          Padding(
            padding: const EdgeInsets.all(16),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 5,
              // color: Colors.deepPurpleAccent,
              child: Container(
                height: 550,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("assets/model1.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          //color: Colors.brown,
                          //boyutu dinamik olsun diye MediaQuery kullandık. width infinity gibi
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            //yukardan aşağı dizimi olan bir widgetın içinde soldan sağa bir düzen vermek için crossAxis
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("34 min ago",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10,
                                    color: Colors.grey,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.green[200],
                          size: 23,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "This official website features a ribbed init zipper jacket that is"
                      "modern and stylism. It looks very temparament and is recommend to friends. ",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Montserrat",
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(//tıklanabilme özelliği vermek için kullanılır
                          onTap: () {
                            //isimlendirilmiş parametre kullandık
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath: 'assets/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            //animasyonlar için kullanılır.
                            //mutlaka bir tag vermeliyiz
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              //   color: Colors.blue,
                              height: 200,
                              width: (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/modelgrid1.jpeg",
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(children: <Widget>[
                          InkWell(
                            onTap: () {
                              //isimlendirilmiş parametre kullandık
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath: 'assets/modelgrid2.jpeg')));
                            },
                            child: Hero(
                              tag: "assets/modelgrid2.jpeg",
                              child: Container(
                                //  color: Colors.blue,
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/modelgrid2.jpeg",
                                      ),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              //isimlendirilmiş parametre kullandık
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath: 'assets/modelgrid3.jpeg')));
                            },
                            child: Hero(
                              tag: "assets/modelgrid3.jpeg",
                              child: Container(
                                //    color: Colors.blue,
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/modelgrid3.jpeg",
                                      ),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          //ortalama için
                          alignment: Alignment.center,
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.orange.withOpacity(0.2)),
                          child: Text(
                            "# louis vuitton",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10,
                                color: Colors.orange),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.orange.withOpacity(0.2)),
                          child: Center(
                            //ortalama için
                            child: Text(
                              "# Chloe",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 10,
                                  color: Colors.orange),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.reply,
                          color: Colors.orange.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "1.7k",
                          style:
                              TextStyle(fontFamily: "Montserrat", fontSize: 16),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.orange.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "325",
                          style:
                              TextStyle(fontFamily: "Montserrat", fontSize: 16),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 220,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.deepPurple[700],
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2.3k",
                                style: TextStyle(
                                    fontFamily: "Montserrat", fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.contain)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.green[900]),
          child: Text(
            "Follow",
            style: TextStyle(
                fontFamily: "Montserrat", fontSize: 15, color: Colors.white),
          ),
        )
      ],
    );
  }
}
