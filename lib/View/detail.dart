import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  String imageName;

  Detail({this.imageName});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [_bigImage(), _littleImage(),_title()],
    ));
  }

  _bigImage() {
    return Hero(
      tag: widget.imageName,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.imageName), fit: BoxFit.cover)),
      ),
    );
  }

  _littleImage() {
    return Positioned(
        bottom: 20,
        left: 20,
        right: 20,
        child: Material(
          color: Colors.white,
          elevation: 4,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 220,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
            child: _containerCompenants(),
          ),
        ));
  }

  _containerCompenants() {
    return Column(
      children: [_firstColumn(), Divider(), _secondColumn()],
    );
  }

  _firstColumn() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 120,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/dress.jpg'), fit: BoxFit.contain)),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "LAMINATED",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Louis vuitton",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black26,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.supervised_user_circle)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 170,
              child: Text(
                " Stunning Animating Curved Shape Navigation Bar. Adjustable color, background color, animation curve, animation duration",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black26,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _secondColumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("\$ 6500", style:
        TextStyle(
            fontSize: 22,
            color: Colors.black54,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold),),
        Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.brown),
            child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                ),
                onPressed: null))
      ],
    );
  }

  _title() {
    return Positioned(
      top: MediaQuery.of(context).size.height/1.75,
      left: 20,
        child: Container(
          height: 40,
          width: 190,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text("LAMINATED",style:
                TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),),
              ),
              IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,), onPressed: null)
            ],
          ),
        ));
  }
}
