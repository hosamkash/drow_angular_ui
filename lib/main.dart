import 'package:drow_angular_ui/Core/DependancyInjection/designeWidjetDrawing.dart';
import 'package:drow_angular_ui/Features/scr_MainDrowUI.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {

 await designeWidjetDrawing_InitialGetX();

  runApp(
      GetMaterialApp(
        title: 'برنامج تاب TAB لتصميم شاشات Angular',
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: scr_MainDrowUI() ,
      )
  );
}


