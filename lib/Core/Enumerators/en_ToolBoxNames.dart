import 'package:flutter/cupertino.dart';

import '../Componants/ctr_TextFormField.dart';

enum en_ToolBoxType {
  NoData(0),
  TextBox(1),
  Container(2),
  Button(3),
  Image(4);

  final int value;

  const en_ToolBoxType(this.value);

  static List<String> getListItemsName() {
    return en_ToolBoxType.values.where((element) => element.value != 0).map((e) => e.name.toString()).toList();
  }

  static en_ToolBoxType getType(String name) {
    if (name == en_ToolBoxType.TextBox.name) {
      return en_ToolBoxType.TextBox;
    } else if (name == en_ToolBoxType.Container.name) {
      return en_ToolBoxType.Container;
    } else if (name == en_ToolBoxType.Button.name) {
      return en_ToolBoxType.Button;
    } else if (name == en_ToolBoxType.Image.name) {
      return en_ToolBoxType.Image;
    }

    return en_ToolBoxType.NoData;
  }

  // رسم الكونترولة بناء على النوع    //   عشان لما اجي فى التصميم اقوله ارسم يكون هو جاهز بكل معلومات الرسم
  static Widget getDrowWidgetItem(String name) {
    Widget? widgetDesigne;
    en_ToolBoxType type = getType(name);

    if (type == en_ToolBoxType.TextBox) {
      widgetDesigne = ctr_TextFormField(
        TextType: TextInputType.text,

      );
    } else if (type == en_ToolBoxType.Button) {
      widgetDesigne = Text('data');
    } else if (type == en_ToolBoxType.Image) {
      widgetDesigne = Text('data');
    } else if (type == en_ToolBoxType.Container) {
      widgetDesigne = Text('data');
    }

    return widgetDesigne ?? SizedBox();
  }
}
