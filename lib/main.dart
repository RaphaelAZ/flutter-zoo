import 'package:flutter/material.dart';
import 'package:flutter_zoo/form.dart';

void main() {
  runApp(const FlutterZoo());
}

class FlutterZoo extends StatelessWidget {
  const FlutterZoo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Zoo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const FlutterZooHome(title: 'Flutter Zoo !'),
    );
  }
}

class FlutterZooHome extends StatefulWidget {
  const FlutterZooHome({super.key, required this.title});
  final String title;

  @override
  State<FlutterZooHome> createState() => _FlutterZooHomeState();
}

class _FlutterZooHomeState extends State<FlutterZooHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: Text(widget.title),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.yellow.shade500,
          fontSize: 50
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green.shade500,
        child: Container(height: 50.0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.grey.shade200,
              width: 300,
              height: 500,
              padding: const EdgeInsets.all(8.0),
            ),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty<Color>.fromMap(<WidgetStatesConstraint, Color>{
                  WidgetState.focused: Colors.blueAccent,
                  WidgetState.pressed | WidgetState.hovered: Colors.blue,
                  WidgetState.any: Colors.yellow.shade500,
                }),
                backgroundColor: WidgetStateProperty<Color>.fromMap(<WidgetStatesConstraint, Color>{
                  WidgetState.any: Colors.green.shade500,
                }),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => FlutterZooForm(),
                    ),
                  );
                },
              child: Text('ENTER THE JUNGLE !'),
            )
          ],
        ),
      ),
      backgroundColor: Colors.green.shade200,
    );
  }
}
