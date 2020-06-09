import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: "colorTag",
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xFfff423f),
            ),
          ),
          SingleChildScrollView(      
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 0, right: 18, top: 50, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 28.0,
                        ),
                      ],
                    ),
                  ),
                  Hero(
                      tag: "name",
                      child: Image.asset(
                        "assets/images/skate.png",
                        width: 380,
                      )),
                  SizedBox(height: 40.0),
                  Text(
                    "Girl's Skates",
                    style: TextStyle(
                        color: Color(0xfffdf00b),
                        fontSize: 50.0,
                        fontWeight: FontWeight.w100),
                  ),
                  SizedBox(height: 40.0),
                  Text(
                    "Available sizes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Color(0xFfff423f))),
                        child: Center(
                          child: Text("4"),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                           border: Border.all(color: Color(0xFfff423f))
                        ),
                        child: Center(
                          child: Text("5"),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                           border: Border.all(color: Color(0xFfff423f))
                        ),
                        child: Center(
                          child: Text("6"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "Description",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis ",
                    style: TextStyle(color: Colors.white60, height: 1.5),
                  ),
                  SizedBox(height: 24.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 75,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        child: Center(
                          child: Text("R336"),
                        ),
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width / 2,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xfffdf00b),
                          child: const Text('Buy',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFfff423f))),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
