import 'package:drow_angular_ui/Core/ToolBoxItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scr_ToolboxPanel extends StatelessWidget {
  scr_ToolboxPanel({super.key});

  final List<String> tools = ['Text', 'Container', 'Button', 'Image'];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('إختيار الأدوات' , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Expanded(
          child: ListView.builder(
            itemCount: tools.length,
            itemBuilder: (context, index) {
              return Draggable<String>(
                data: tools[index],
                feedback: Material(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.blueAccent,
                    child: Text(tools[index], style: TextStyle(color: Colors.white)),
                  ),
                ),
                child: ToolBoxItem(label: tools[index]),
                childWhenDragging: Opacity(
                  opacity: 0.7,
                  child: ToolBoxItem(label: tools[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }






}
