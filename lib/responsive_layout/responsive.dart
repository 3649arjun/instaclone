import 'package:flutter/material.dart';
import 'package:instagramclone/responsive_layout/dimensions.dart';

class responsive extends StatelessWidget {
  final Widget mobilescreenlayout;
  final Widget webscreenlayout;

  const responsive({Key? key,required this.mobilescreenlayout,required this.webscreenlayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints)
    {
      if(constraints.maxWidth>webscreensize)
        {
          return webscreenlayout;
        }
      else
        {
          return mobilescreenlayout;
        }



    });
  }
}
