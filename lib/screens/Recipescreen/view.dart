import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food/screens/dashboardscreen/components/populardeals.dart';
import 'package:food/screens/dashboardscreen/components/search.dart';
import 'package:food/widgets/item-text.dart';

import '../../controller.dart';
import 'component/categoriestypes.dart';
import 'component/populardealtypes.dart';
import 'oatsoverview/view.dart';

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  var controller = ProjectController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.red,child: Icon(Icons.keyboard_arrow_down),mini: true,),
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: MyText(
          text: '\nChoose your one \nfrom 1000+ Recipes!',
          size: 22,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 11, right: 11),
          child: Column(
            children: [
              SearchComponent(),
              CategoriesTypeComponent(),
              PopularDealsComponent(),
              PopularDealTypesCompenent()
            ],
          ),
        ),
      ),
    );
  }
}





