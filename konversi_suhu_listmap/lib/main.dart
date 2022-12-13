import 'package:flutter/material.dart';
import 'package:konversi_suhu_flutter/widgets/convert.dart';
import 'package:konversi_suhu_flutter/widgets/input.dart';
import 'package:konversi_suhu_flutter/widgets/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController Celcius = new TextEditingController();

  double inputUser = 0;
  double kelvin = 0;
  double reamor = 0;

  void konversiSuhu() {
    setState(() {
      inputUser = double.parse(Celcius.text);
      kelvin = inputUser + 273;
      reamor = inputUser * (4 / 5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Input(Celcius: Celcius),
          Result(kelvin: kelvin, reamor: reamor),
          Convert(konversiSuhu: konversiSuhu)
        ]),
      ),
    );
  }
}
