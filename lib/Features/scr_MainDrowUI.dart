import 'package:drow_angular_ui/Core/DependancyInjection/designeWidjetDrawing.dart';
import 'package:drow_angular_ui/Features/CanvasPanel/scr_CanvasPanel.dart';
import 'package:drow_angular_ui/Features/PropertiesPanel/scr_PropertiesPanel.dart';
import 'package:drow_angular_ui/Features/ToolBox/scr_ToolboxPanel.dart';
import 'package:drow_angular_ui/Features/widjetDrawed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_button_type.dart';

class scr_MainDrowUI extends StatefulWidget {
  scr_MainDrowUI({super.key});

  @override
  State<scr_MainDrowUI> createState() => _scr_MainDrowUIState();
}

class _scr_MainDrowUIState extends State<scr_MainDrowUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => GFButton(
                    text: 'مسح التصميم : ' + Get.find<widgetDrawed>().lstWidgetItem.length.toString(),
                    type: GFButtonType.outline2x,
                    size: GFSize.MEDIUM,
                    onPressed: () {
                      Get.find<widgetDrawed>().lstWidgetItem.clear();
                    },
                  ),
                ),
                const SizedBox(width: 10),
                const Text('برنامج (تاب) لتصميم شاشات (أنجيولار)'),
              ],
            ),
            const Divider(),
          ],
        )),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(flex: 1, child: scr_ToolboxPanel()),
            Expanded(flex: 2, child: scr_CanvasPanel()),
            Expanded(flex: 3, child: scr_PropertiesPanel()),
          ],
        ),
      ),
    );
  }
}
