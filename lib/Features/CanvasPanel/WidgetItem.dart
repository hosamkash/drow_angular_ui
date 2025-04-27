import 'package:drow_angular_ui/Core/Enumerators/en_ToolBoxNames.dart';
import 'package:flutter/material.dart';

class WidgetItem {
  String id;
  en_ToolBoxType type;
  double top;
  double left;
  Widget widgetDesigne;

  WidgetItem(this.id, this.type, this.top, this.left, this.widgetDesigne);


}
