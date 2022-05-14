import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controller.dart';


class CategoriesTypeComponent extends StatelessWidget {
  var controller=ProjectController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: controller.recipes_images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 10),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(controller.recipes_images[index]),
                  fit: BoxFit.cover),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  color: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  margin: const EdgeInsets.only(top: 60),
                ),
                Container(
                  color: Colors.red,
                  child: Text(
                    controller.recipes[index],
                    style: TextStyle(color: Colors.white, fontSize: 12),
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
