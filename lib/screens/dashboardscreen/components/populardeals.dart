


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/dashboardscreen/populardeals/view.dart';
import 'package:food/widgets/item-text.dart';

import '../../../controller.dart';

class PopularDealsComponent extends StatefulWidget {
  @override
  _PopularDealsComponentState createState() => _PopularDealsComponentState();
}

class _PopularDealsComponentState extends State<PopularDealsComponent> {
  var controller = ProjectController();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: MyText(
        text: 'Popular Deals',
        size: 20,
        color: Colors.black,
      ),
      trailing: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PopularDealsScreen();
            }));
          },
          child: MyText(text: 'See All', size: 15, color: Colors.deepOrange)),
    );
  }
}
