import 'package:flutter/material.dart';
import './text_output.dart';

class TextController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextState();
}

class _TextState extends State<TextController> {
  var _text = 'My first text';

  void _changeText() {
    setState(() {
      _text = 'My second text after change';
    });
  }

  void _resetText() {
    setState(() {
      _text = 'My first text';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _changeText,
              child: Text('Change text'),
            ),
            TextOutput(_text),
            TextButton(
              onPressed: _resetText,
              child: Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
