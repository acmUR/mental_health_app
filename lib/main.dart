import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//hehehehehe
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const InfoHomePage(title: 'Information'),
    );
  }
}

class InfoHomePage extends StatefulWidget {
  const InfoHomePage({super.key, required this.title});
  final String title;
  @override
  State<InfoHomePage> createState() => _InfoHomePageState();
}

class _InfoHomePageState extends State<InfoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the InfoHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Text(
              'All UR\'s information for YOUR needs in ONE place.',
              textAlign: TextAlign.center,
            ),
            Text('(you\'re welcome)',
                textAlign: TextAlign.center,
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10)),
            ElevatedButton(
              onPressed: null,
              child: const Text('Emergency'),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('Social'),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('Academic'),
            ),
            Expanded(
              child: FittedBox(
                child: FlutterLogo(),
              ),
            ),
          ],
        ));
  }
}
