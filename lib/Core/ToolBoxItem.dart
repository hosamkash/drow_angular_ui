import 'package:flutter/material.dart';

class ToolBoxItem extends StatelessWidget {
  ToolBoxItem( {this.label = '' ,super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(3),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Center(child: Text(label)),
      ),
    );
  }
}
