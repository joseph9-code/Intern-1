import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = -10;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }
void addnew(){
  setState(() {
  _counter =10;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Welcome Joseph"),
            const Text(
              'I hmet ngun tawh viau e LUMAM:',
            ),
            Text('$_counter',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 60,
                      color: Colors.red,
                    )),
            const TextButton(
              onPressed: null,
              child: Text("MZU INTERNSHIP"),
              
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
              child: Icon(Icons.refresh),
            ),
            const Icon(Icons.access_alarm_outlined),
            const TextField(),
            ElevatedButton(onPressed: _reset, child: const Text("Reset")),
            ElevatedButton(
                onPressed: _incrementCounter, child: const Text("Add")),
            ElevatedButton(
                onPressed: _decrementCounter, child: const Text("Decrement")),
         ElevatedButton(onPressed: addnew, child: const Text("Add New"))
          ]
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