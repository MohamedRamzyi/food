import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  Function onPressed;
  String data;
  MyButton({required this.data, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        padding:const EdgeInsets.all(18),
        onPressed: () {
          return onPressed();
        },
        color: Colors.deepOrange[700],
        minWidth: double.infinity,
        child: Text(data,style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
