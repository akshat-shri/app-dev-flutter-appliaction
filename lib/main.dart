import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

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
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "APP DEVELOPMENT",
          style: TextStyle(fontSize: 25.0),
        ),
        // leading: Icon(Icons.home),
        actions: [
          Icon(Icons.login),
          Icon(Icons.logout),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Container(
            //     height: 725,
            //     width: 350,
            //     color: Colors.amber,
            //     child: Text("welcome user A")),
            ListTile(
              title: Text(
                "LOGIN",
              ),
              trailing: Icon(Icons.login),
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ListTile(
              title: Text(
                "LOGOUT",
              ),
              trailing: Icon(Icons.logout),
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ListTile(
              title: Text(
                "HELP",
              ),
              trailing: Icon(Icons.help),
              onTap: () {},
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ListTile(
              title: Text(
                "SUPPORT",
              ),
              trailing: Icon(Icons.support),
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Icon(
                  Icons.home,
                  size: 125,
                  color: Colors.brown,
                ),
                Icon(
                  Icons.local_gas_station,
                  size: 125,
                  color: Colors.cyan,
                ),
                Icon(
                  Icons.account_balance,
                  size: 125,
                  color: Colors.green,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: ElevatedButton(
                  // style: ButtonStyle(backgroundColor: Colors.green),
                  onPressed: () {
                    print("user clicked on submit button");
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            // Container(
            //   padding: EdgeInsets.only(top: 15),
            //   height: 100,
            //   width: 100,
            //   color: Colors.deepPurple,
            //   child: Center(
            //     child: Column(
            //       children: [-
            //         Icon(Icons.access_alarm),
            //         Text(
            //           "Akshat",
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 6,
                    child: Image.network(
                        "https://parentzone.org.uk/sites/default/files/Instagram%20logo.jpg"),
                  ),
                  Expanded(
                    flex: 8,
                    child: Image.network(
                        "https://yt3.ggpht.com/ytc/AKedOLQUW9FJ6oz2WOkfU_2SbFanfDvOXrYVfE4SuaDyrz0=s900-c-k-c0x00ffffff-no-rj"),
                  ),
                  Expanded(
                      flex: 4,
                      child: Image.network(
                          "https://businessesgrow.com/wp-content/uploads/2019/10/Screen-Shot-2019-10-12-at-11.47.51-AM.png")),
                ],
              ),
            ),
            // Expanded(
            //   child: Text(
            //     "welcome to new session",
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.network(
                  "https://image.shutterstock.com/image-vector/smiley-vector-happy-face-260nw-408014413.jpg"),
            ),
            Text("welcome to akshat screen",
                style: TextStyle(color: Colors.blue, fontSize: 25.0)),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
