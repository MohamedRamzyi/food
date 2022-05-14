import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/widgets/item-text.dart';


class SearchComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: MediaQuery.of(context).size.width / 1.3,
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for Anything',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          trailing: Icon(
            Icons.menu_open_sharp,
            color: Colors.black54,
          ),
        ),
        ListTile(
          title: MyText(
            text: 'Categories',
            color: Colors.black,
            size: 19,
          ),
          trailing:  MyText(
              text: 'See All',
              color: Colors.deepOrange,
              size: 15,
            ),
          ),
      ],
    );
  }
}
