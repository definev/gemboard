import 'package:flutter/material.dart';

class CellView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cell'),
      ),
      body: Center(
        child: Text('Hello, cell!'),
      ),
    );
  }
}