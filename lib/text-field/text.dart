import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  final TextInputType textInputType;
   final bool isPass ;
  final String hinttext;
  final TextEditingController textEditingController;

  const textfield({Key? key,required this.textInputType, this.isPass = false,required this.hinttext,required this.textEditingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputborder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context)
    );
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
      hintText:hinttext,
        border:inputborder ,
        focusedBorder: inputborder,
        enabledBorder: inputborder,
        contentPadding:EdgeInsets.all(8) ,
      ),
      keyboardType: textInputType,
        obscureText: isPass,
    );
  }
}
