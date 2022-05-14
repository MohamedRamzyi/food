import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controller.dart';

class CategoriesComponent extends StatelessWidget{
  var controller=ProjectController();
  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 4,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: controller.vegetables_images.length,
        itemBuilder: (context, index){
          return Container(
            margin: const EdgeInsets.only(left: 10),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(controller.vegetables_images[index]),
                  fit: BoxFit.fitHeight),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(color: Colors.deepOrange[700],
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  margin: const EdgeInsets.only(top: 85),
                ),
                Container(
                  color: Colors.deepOrange[700],
                  child: Text(
                    controller.vegetables[index],
                    style: TextStyle(color: Colors.white,fontSize: 12),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
