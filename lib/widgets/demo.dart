import 'package:flutter/material.dart';

class ToggleSwitchIconExample extends StatefulWidget {
  @override
  _ToggleSwitchIconExampleState createState() =>
      _ToggleSwitchIconExampleState();
}

class _ToggleSwitchIconExampleState extends State<ToggleSwitchIconExample> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Switch Icon Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: _isSwitched
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),
              onPressed: () {
                setState(() {
                  _isSwitched = !_isSwitched;
                });
              },
              color: _isSwitched ? Colors.red : Colors.grey,
              iconSize: 50,
            ),
            Text(
              _isSwitched ? 'Icon is ON' : 'Icon is OFF',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ToggleSwitchIconExample(),
  ));
}
