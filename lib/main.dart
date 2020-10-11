import 'package:fashion_application/View/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
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
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Fashion Istanbul",
          style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(icon: Icon(Icons.camera_alt_rounded), onPressed: null),
        ],
      ),
      body: buildBody(),
      bottomNavigationBar: buildNavigationBar(),
    );
  }

  Widget buildBody() {
    return ListView(
      children: [
        buildTopFollowsItem(),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            // color: Colors.blueGrey,
            child: Container(
              height: 511 ,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: AssetImage('assets/model1.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Daisy",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "34 minutes ago",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black26,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.black38,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Well depends of your needs. By example, if you need a small number of callbacks like 2, i advise you use the same approach that i already showed. ",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black26,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detail(imageName: "assets/modelgrid1.jpeg")));
                        },
                        child: Hero(
                          tag: 'assets/modelgrid1.jpeg',
                          child: Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage('assets/modelgrid1.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detail(
                                        imageName: 'assets/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width / 2.8,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid2.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detail(
                                      imageName: 'assets/modelgrid3.jpeg')));
                            }
                              ,child: Hero(

                              tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width / 2.8,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/modelgrid3.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.brown.withOpacity(0.3),
                        ),
                        child: Center(
                          child: Text("# Louis vuitton",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black26,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.brown.withOpacity(0.3),
                        ),
                        child: Center(
                          child: Text("# Chlo",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black26,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: null,
                      ),
                      Text("1.7k",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black26,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: null,
                      ),
                      Text("355",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black26,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 50),
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        onPressed: null,
                      ),
                      Text("2.3k",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black26,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Container buildTopFollowsItem() {
    return Container(
      //color: Colors.blueGrey,
      height: 140,
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          createListItems('assets/model1.jpeg', 'assets/chanellogo.jpg'),
          SizedBox(
            width: 25,
          ),
          createListItems('assets/model2.jpeg', 'assets/chloelogo.png'),
          SizedBox(
            width: 25,
          ),
          createListItems('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
          SizedBox(
            width: 25,
          ),
          createListItems('assets/model1.jpeg', 'assets/chanellogo.jpg'),
          SizedBox(
            width: 25,
          ),
          createListItems('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
          SizedBox(
            width: 25,
          ),
          createListItems('assets/model2.jpeg', 'assets/chloelogo.png'),
        ],
      ),
    );
  }

  Widget createListItems(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.brown[600]),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat'),
            ),
          ),
        )
      ],
    );
  }

  Widget buildNavigationBar() {
    return Material(
        child: TabBar(
      tabs: myItems(),
      controller: tabController,
      indicatorColor: Colors.transparent,
    ));
  }

  myItems() {
    return [
      Tab(icon: Icon(Icons.upload_sharp, size: 25, color: Colors.black45)),
      Tab(
        icon: Icon(
          Icons.video_collection_sharp,
          size: 25,
          color: Colors.black45,
        ),
      ),
      Tab(
        icon: Icon(Icons.assistant_navigation, size: 25, color: Colors.black45),
      ),
      Tab(
        icon:
            Icon(Icons.supervised_user_circle, size: 25, color: Colors.black45),
      ),
    ];
  }
}
