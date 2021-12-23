import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String _text;

  TextOutput(this._text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(_text);
  }
}
