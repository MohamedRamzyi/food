import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/widgets/item-button.dart';
import 'package:food/widgets/item-text.dart';

import '../../../controller.dart';
import '../../main.dart';

class SignScreen extends StatefulWidget {
  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  var controller = ProjectController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
        title: Image.asset(
            'images/sign.png'),
        toolbarHeight: 250,
      ),
      body: Container(
        color: Colors.white,
        child: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height/1.5),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50))),
                      child: TabBar(
                          indicatorWeight: 3,
                          indicatorSize: TabBarIndicatorSize.label,
                          onTap: (ind) {
                            controller.ind = ind;
                            setState(() {});
                          },
                          indicatorColor: Colors.deepOrange[700],
                          tabs: [
                            MyText(
                                text: 'Sign in', size: 12, color: Colors.black),
                            MyText(
                                text: 'Sign up', size: 12, color: Colors.black),
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 13,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: TabBarView(children: [
                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                MyText(
                                    text: 'Register With',
                                    size: 18,
                                    color: Colors.black),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(10)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.linked_camera))),
                                MyText(text: 'or', size: 15, color: Colors.black),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(10)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.facebook))),
                              ],
                            ),
                            TextFormField(
                                decoration: const InputDecoration(
                              hintText: 'waleed5@gmail.com',
                              labelText: 'Email address',
                            )),
                            TextFormField(
                                decoration: const InputDecoration(
                              suffixIcon: Icon(CupertinoIcons.eye_slash),
                              hintText: '**********',
                              labelText: 'Password',
                            )),
                            MyButton(
                                data: 'Login',
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MyProjectScreen();
                                  }));
                                })
                          ],
                        ),
                        Center(child: Text('data')),
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
