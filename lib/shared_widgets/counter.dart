import 'package:flutter/material.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/color_theme.dart';

class Counter extends StatelessWidget{
   const Counter({super.key, required this.add, required this.subtrack, required this.i});

   final int i;
   final VoidCallback add ;
   final VoidCallback subtrack;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: subtrack, icon: Icon(Icons.horizontal_rule)),
        Container(
          height: MediaQuery.sizeOf(context).height/27.07,
          width: MediaQuery.sizeOf(context).width/10.13 ,
          child: Center(child: Text(i.toString())),
          decoration: BoxDecoration(
            color: ColorTheme.accentBluish,
            borderRadius: BorderRadius.circular(7)

          ),

        ),
        IconButton(onPressed: add, icon: Icon(Icons.add)),

      ],

    );
  }




}