import 'package:drow_angular_ui/Features/scr_CanvasPanel.dart';
import 'package:drow_angular_ui/Features/scr_PropertiesPanel.dart';
import 'package:drow_angular_ui/Features/scr_ToolboxPanel.dart';
import 'package:flutter/material.dart';

class scr_MainDrowUI extends StatefulWidget {
   scr_MainDrowUI({super.key});

  @override
  State<scr_MainDrowUI> createState() => _scr_MainDrowUIState();
}

class _scr_MainDrowUIState extends State<scr_MainDrowUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'برنامج تاب TAB لتصميم شاشات Angular',
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('برنامج تاب TAB لتصميم شاشات Angular')),
          backgroundColor: Colors.white,
        ),
        body: Row(
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
