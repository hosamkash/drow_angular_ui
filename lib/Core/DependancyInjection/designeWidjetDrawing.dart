import 'package:drow_angular_ui/Core/Resources/colorManager.dart';
import 'package:drow_angular_ui/Core/Resources/fontManager.dart';
import 'package:drow_angular_ui/Core/Resources/styleManager.dart';
import 'package:drow_angular_ui/Core/Resources/valuesManager.dart';
import 'package:drow_angular_ui/Features/widjetDrawed.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future designeWidjetDrawing_InitialGetX() async {
  await Get.put<widgetDrawed>(widgetDrawed());
  await Get.put<colorManager>(colorManager());
  await Get.put<fontManager>(fontManager());
  await Get.put<styleManager>(styleManager());
  await Get.put<valuesManager>(valuesManager());


}
