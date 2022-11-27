import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'tugas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyTugas(),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: const Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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

class ButtonWithContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Contoh Button")),
          // ignore: avoid_unnecessary_containers
          body: Container(
            margin: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                textStyle: const TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              child: const Text("Button", style: TextStyle(fontSize: 20)),
            ),
          )),
    );
  }
}

class BottomAlignSample extends StatelessWidget {
  const BottomAlignSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh Aligment")),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: const Text(
            'Semangat Belajar',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class ColorContainerSample extends StatelessWidget {
  const ColorContainerSample({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Contoh Color")),
          body: Container(
              padding: const EdgeInsets.only(left: 20),
              margin: const EdgeInsets.all(20),
              height: 99,
              width: 250,
              alignment: Alignment.topCenter,
              color: Colors.orange,
              child: const Text(
                'Ayo Belajar Flutter',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ))),
    );
  }
}

class ImageTransformSample extends StatelessWidget {
  const ImageTransformSample({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Contoh Transform")),
          body: Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1555677284-6a6f971638e0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                fit: BoxFit.fitHeight,
              ),
              border: Border.all(
                color: Colors.black,
                width: 8,
              ),
            ),
            height: 200,
            width: 300,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
          )),
    );
  }
}

class ColumnWidgetSample extends StatelessWidget {
  const ColumnWidgetSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Contoh Column Widget")),
          body: Row(
            children: [
              Container(
                color: Colors.purpleAccent,
                child: const FlutterLogo(
                  size: 90.0,
                ),
              ),
              Container(
                color: Colors.greenAccent,
                child: const FlutterLogo(
                  size: 90.0,
                ),
              ),
              Container(
                color: Colors.orangeAccent,
                child: const FlutterLogo(
                  size: 90.0,
                ),
              )
            ],
          )),
    );
  }
}

class StackWidgetSample extends StatelessWidget {
  const StackWidgetSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Contoh Stack Widget"),
          ),
          body: Stack(
            children: [
              Container(
                color: Colors.green,
                alignment: Alignment.bottomCenter,
                child: const Text("Satu",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
              Container(
                color: Colors.red,
                alignment: Alignment.bottomCenter,
                child: const Text("Dua",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                height: 400.0,
                width: 300.0,
              ),
              Container(
                color: Colors.deepPurple,
                alignment: Alignment.bottomCenter,
                child: const Text("Tiga",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                height: 200.0,
                width: 200.0,
              )
            ],
          )),
    );
  }
}

class ListViewSample extends StatelessWidget {
  const ListViewSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Contoh List Widget"),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                color: Colors.green,
                alignment: Alignment.topLeft,
                child: const Text(
                    "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
              Container(
                color: Colors.red,
                alignment: Alignment.topLeft,
                child: const Text(
                    "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                height: 400.0,
                width: 300.0,
              ),
              Container(
                color: Colors.deepPurple,
                alignment: Alignment.bottomCenter,
                child: const Text(
                    "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                height: 200.0,
                width: 200.0,
              )
            ],
          )),
    );
  }
}

class GridViewSample extends StatelessWidget {
  const GridViewSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Contoh GridView Widget"),
          ),
          body: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text("1",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
              Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text("2",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                height: 400.0,
                width: 300.0,
              ),
              Container(
                color: Colors.deepPurple,
                alignment: Alignment.center,
                child: const Text("3",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                height: 200.0,
                width: 200.0,
              ),
              Container(
                color: Colors.blueGrey,
                alignment: Alignment.center,
                child: const Text("4",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                height: 200.0,
                width: 200.0,
              ),
              Container(
                color: Colors.cyan[800],
                alignment: Alignment.center,
                child: const Text("5",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                height: 200.0,
                width: 200.0,
              ),
              Container(
                color: Colors.yellow[800],
                alignment: Alignment.center,
                child: const Text("6",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                height: 200.0,
                width: 200.0,
              )
            ],
          )),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable/State untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();

  // Initial SelectDate FLutter
  Future<void> _selectDate(BuildContext context) async {
    // Initial DateTime FIinal Picked
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '"${selectedDate.toLocal()}'.split('')[0],
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () => {
                      _selectDate(context),
                      // ignore: avoid_print
                      print(selectedDate.day +
                          selectedDate.month +
                          selectedDate.year)
                    },
                child: const Text('Pilih Tanggal'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
