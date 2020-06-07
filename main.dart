import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      backgroundColor: Colors.red,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0),
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text(
                    'Maths',
                    textAlign: TextAlign.center,
                    textScaleFactor: 3.0,
                  ),
                  alignment: Alignment.center,
                  width: 150.0,
                  height: 200.0,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MathRoute()));
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text(
                    'English',
                    textAlign: TextAlign.center,
                    textScaleFactor: 3.0,
                  ),
                  alignment: Alignment.center,
                  width: 150.0,
                  height: 200.0,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EngRoute()));
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 30.0),
              ),
              InkWell(child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Text(
                  'Urdu',
                  textAlign: TextAlign.center,
                  textScaleFactor: 3.0,
                ),
                alignment: Alignment.center,
                width: 150.0,
                height: 200.0,
              ), onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UrduRoute()));
              },),
              
              Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 30.0),
              ),
              InkWell( child:
                Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Text(
                  'Science',
                  textAlign: TextAlign.center,
                  textScaleFactor: 3.0,
                ),
                alignment: Alignment.center,
                width: 150.0,
                height: 200.0,
              ), onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ScienceRoute()));
              },),
              
            ],
          ),
        ],
      ),
    );
  }
}

class MathRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathematical Questions'),
      ),
    );
  }
}

class EngRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English Questions'),
      ),
    );
  }
}

class UrduRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URDU Questions'),
      ),
    );
  }
}

class ScienceRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Science Questions'),
      ),
    );
  }
}
