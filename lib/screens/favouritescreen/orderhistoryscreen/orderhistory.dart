import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/widgets/item-text.dart';

import '../../../controller.dart';

class OrderHistoryScreen extends StatefulWidget {
  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  var controller = ProjectController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(text: 'Orders', size: 18, color: Colors.black),
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              children: [
                Expanded(
                  child: TabBar(
                      indicatorWeight: 4,
                      indicatorSize: TabBarIndicatorSize.label,
                      onTap: (ind) {
                        controller.ind = ind;
                        setState(() {});
                      },
                      indicatorColor: Colors.deepOrange[700],
                      tabs: [
                        MyText(text: 'Ongoing', size: 12, color: Colors.black),
                        MyText(text: 'History', size: 12, color: Colors.black),
                      ]),
                ),
                Expanded(
                  flex: 16,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: TabBarView(children: [
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.item_count-1,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(15),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrange[700],
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.white,
                                          ))),
                                  Column(children: [
                                    MyText(text: index==2?'Order #325':'Order #322', size: 18, color:Colors.black),
                                    MyText(text: index==2?'Cancelled':'Delivered', size: 18, color:index==2?Colors.red:Colors.green),
                                    MyText(text: 'July 3,2021', size: 18, color:Colors.black45),
                                  ],),
                                  Column(
                                    children: [
                                      MyText(
                                          text: '\$40.50',
                                          size: 18,
                                          color: Colors.deepOrange),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.green,
                                        backgroundImage:index==2?NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1vyPCVRQbe4BHBwoYQIPgtHp_rJdUyprRBw&usqp=CAU') :NetworkImage(
                                            'https://www.pngitem.com/pimgs/m/144-1449392_true-false-icon-png-transparent-png.png'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                      MyText(text: 'text', size: 20, color: Colors.black),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
