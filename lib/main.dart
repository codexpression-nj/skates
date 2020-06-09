import 'package:flutter/material.dart';
import 'package:skaters/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18, top: 50, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 28.0,
                ),
                   Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 28.0,
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 18, right: 18, top: 50, bottom: 20), 
              
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Perfect Skates", style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500)),
                      TextSpan(text: "\n"),
                      TextSpan(text: "For Perfect Skaters", style: TextStyle(color: Colors.black, fontSize: 16,)),
                     ],
                  ),
                ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height - 220,
            width: double.infinity,
            child: LayoutBuilder(builder: (cx, ct) {
              double width = ct.maxWidth;
              double hieght = ct.maxHeight;

              return Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Hero(
                      tag: "colorTag",
                      child: Container(
                          width: width * .9,
                          height: hieght / 1.5,
                          color: Color(0xFfff423f)),
                    ),
                  ),
                  Positioned(
                    bottom: 120.0,
                    left: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Girl's Skate",
                          style: TextStyle(
                              color: Color(0xfffdf00b),
                              fontSize: 50.0,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: hieght / 18,
                    right: -110,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Detail()));
                      },
                      child: Hero(
                        tag: "name",
                        child: Image.asset('assets/images/skate.png',
                            width: 400, height: 350),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),

        ],
      ),
    );
  }
}
