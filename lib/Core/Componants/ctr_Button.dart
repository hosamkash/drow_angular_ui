import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/button/gf_button.dart';

class ctr_Button extends StatefulWidget {
  late String? text;
  late Color? color;
  late double? size;
  late Widget? iconWidget;




  late String? Function(String?)? OnValidate;
  late String? Function(String?)? OnChanged;
  late String? Function(String?)? OnSubmitted;
  late String? Function()? onPressed;

  ctr_Button({
    Key? Key,
    this.text = '',
    this.color,
    this.size,
    this.iconWidget,



    this.OnValidate,
    this.OnChanged,
    this.OnSubmitted,
    this.onPressed,
  }) : super(key: Key);

  @override
  State<ctr_Button> createState() => _ctr_TextFormFieldState();
}

class _ctr_TextFormFieldState extends State<ctr_Button> {
  @override
  Widget build(BuildContext context) {
    return GFButton(
      text: widget.text ?? '',
      color: widget.color ?? GFColors.PRIMARY,
      size: widget.size ?? 50,
      icon: widget.iconWidget ,
      onPressed: widget.onPressed,


    );
  }
}
