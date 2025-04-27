import 'package:drow_angular_ui/Core/Enumerators/en_ToolBoxNames.dart';
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/types/gf_button_type.dart';

class scr_ToolboxPanel extends StatelessWidget {
  scr_ToolboxPanel({super.key});

  final List<String> tools = en_ToolBoxType.getListItemsName();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('إختيار الأدوات', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Expanded(
          child: ListView.builder(
            itemCount: tools.length,
            itemBuilder: (context, index) {
              return Draggable<String>(
                data: tools[index],
                feedback: GFButton(
                  text: tools[index],
                  type: GFButtonType.outline2x,
                  color: Colors.orange,

                  onPressed: () {},
                ),
                childWhenDragging: GFButton(
                  text: tools[index],
                  type: GFButtonType.solid,
                  color: Colors.orange,
                  onPressed: () {},
                ),
                child: GFButton(
                  text: tools[index],
                  type: GFButtonType.solid,
                  size: GFSize.MEDIUM,
                  onPressed: () {},
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
