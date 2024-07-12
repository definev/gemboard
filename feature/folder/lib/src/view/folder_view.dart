import 'package:flutter/material.dart';

class FolderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('folder'),
      ),
      body: Center(
        child: Text('Hello, folder!'),
      ),
    );
  }
}