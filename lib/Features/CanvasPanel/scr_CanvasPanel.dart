import 'package:drow_angular_ui/Core/DependancyInjection/designeWidjetDrawing.dart';
import 'package:drow_angular_ui/Core/Enumerators/en_ToolBoxNames.dart';
import 'package:drow_angular_ui/Features/CanvasPanel/WidgetItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_button_type.dart';

import '../widjetDrawed.dart';

class scr_CanvasPanel extends StatefulWidget {
  scr_CanvasPanel({super.key});

  @override
  State<scr_CanvasPanel> createState() => _scr_CanvasPanelState();
}

class _scr_CanvasPanelState extends State<scr_CanvasPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[50]!,
      child: DragTarget<String>(
        onLeave: (data) {
          // Get.find<widgetDrawed>().lstWidgetItem.add(WidgetItem(data ?? '00', data ?? '11', 50, 50));
          print(data);
        },
        // onMove: (details) {
        //   widgets.add(WidgetItem(details.data, details.data, 50, 50));
        // },
        onAcceptWithDetails: (details) {
          Get.find<widgetDrawed>().lstWidgetItem.add(
              WidgetItem(
                details.data,
                en_ToolBoxType.getType(details.data),
                details.offset.dx,
                details.offset.dy,
                en_ToolBoxType.getDrowWidgetItem(details.data),
              ));
        },
        builder: (context, candidateData, rejectedData) {
          return Obx(
            () => Stack(
              children: Get.find<widgetDrawed>().lstWidgetItem.map(
                (element) {
                  return Positioned(
                    top: element.top,
                    left: element.left,
                    child: element.widgetDesigne,
                  );
                },
              ).toList(),
            ),
          );
        },
      ),
    );
  }
}
