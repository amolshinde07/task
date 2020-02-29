import 'package:flutter/material.dart';
import 'package:task/product_details.dart';

import 'about_us.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final List<String> numbers = ['75% of Peseva users are saving more than you. Start saving.',
    '30% users have already saved this month Have you?','ssdd'];
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

        body: SingleChildScrollView(
          child: Container(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.info),
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (BuildContext context)=> About_us(),
                        )
                        );
                      },
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                  ),


                ),

                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Zomato',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              color: Colors.green
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        child: Container(
                          // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                          height: 200.0,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: numbers.length, itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Container(
                                    child:
                                    Stack(
                                      children: <Widget>[
                                        Image.asset(
                                          'images/card_img$index.jpg',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.fill,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10.0),
                                          child: Column(
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                  ),
                                                  Text(
                                                    'Epic Deals',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Text(
                                                    'Upto 90% off',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15.0,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,

                                                  ),


                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,

                                              ),


                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      height: 50,
                                                      width: 50,
                                                    ),
                                                    Text(
                                                      'T&C Apply',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.0,
                                                          fontWeight: FontWeight.bold
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )

                                            ],

                                          ),
                                        )


                                      ],
                                    )

                                ),
                              ),
                            );
                          }
                          ),

                        ),
                        onTap: (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (BuildContext context)=> Product_details(),
                          )
                          );
                        },
                      )
                    ],
                  )
                  ,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(

                                children: <Widget>[
                                  Image.asset(
                                    'images/food.png',
                                    height: 70.0,
                                    width: 70.0,
                                  ),
                                  SizedBox(
                                   width: 15,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'TheBroma',
                                        style:TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17                                  ),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '30-45 mins',
//                                style: TextStyle(
//                                  color: Color(0xFF586974),
//                                ),
                                      ),


                                    ],
                                  )
                                ],
                              ),

                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(15.0),
                              ),
                              RaisedButton(
                                color: Colors.green,
                                child: Text(
                                  'Buy',
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(context, new MaterialPageRoute(
                                    builder: (BuildContext context)=> Product_details(),
                                  )
                                  );
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ),

                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(

                                children: <Widget>[
                                  Image.asset(
                                    'images/food.png',
                                    height: 70.0,
                                    width: 70.0,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'TheBroma',
                                        style:TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17                                  ),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '30-45 mins',
//                                style: TextStyle(
//                                  color: Color(0xFF586974),
//                                ),
                                      ),


                                    ],
                                  )
                                ],
                              ),

                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(15.0),
                              ),
                              RaisedButton(
                                color: Colors.green,
                                child: Text(
                                  'Buy',
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(context, new MaterialPageRoute(
                                    builder: (BuildContext context)=> Product_details(),
                                  )
                                  );
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ),

                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(

                                children: <Widget>[
                                  Image.asset(
                                    'images/food.png',
                                    height: 70.0,
                                    width: 70.0,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'TheBroma',
                                        style:TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17                                  ),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '30-45 mins',
//                                style: TextStyle(
//                                  color: Color(0xFF586974),
//                                ),
                                      ),


                                    ],
                                  )
                                ],
                              ),

                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(15.0),
                              ),
                              RaisedButton(
                                color: Colors.green,
                                child: Text(
                                  'Buy',
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(context, new MaterialPageRoute(
                                    builder: (BuildContext context)=> Product_details(),
                                  )
                                  );
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ),




              ],
            ),
          ),
        )
    );
  }
}
