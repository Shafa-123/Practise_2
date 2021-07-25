import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(title: 'App Development'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final barcolor = const Color(0xFF120E43);
    final bgcolor = const Color(0xFFCAD5E2);
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: [
          ListTile(
            title: Text('Home'),
            trailing: Icon(Icons.home),
          ),
          ListTile(
            title: Text('Settings'),
            trailing: Icon(Icons.settings),
          ),
          ListTile(title: Text('Support'), trailing: Icon(Icons.help_center)),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.info_sharp,
          ),
          backgroundColor: barcolor,
          onPressed: () {}),
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: barcolor,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the First Screen',
            ),
            Image(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1511376777868-611b54f68947?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGFwcCUyMGRldmVsb3BtZW50fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
              width: 100,
              height: 100,
            ),
            Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1551355738-1875b6664915?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=625&q=80'),
              width: 100,
              height: 100,
            ),
            Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1480694313141-fce5e697ee25?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'),
              width: 100,
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AnotherScreen();
                  }));
                },
                child: Text('Tap to move to another screen'))
          ],
        ),
      ), // This  comma makes auto-formatting nicer for build methods.
    );
  }
}

class AnotherScreen extends StatefulWidget {
  const AnotherScreen({Key? key}) : super(key: key);

  @override
  _AnotherScreenState createState() => _AnotherScreenState();
}

class _AnotherScreenState extends State<AnotherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Thank you Shafa", style: TextStyle(fontSize: 30.0)),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.logout, color: Colors.green),
        )
      ]),
    ));
  }
}
