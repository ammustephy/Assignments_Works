import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_pages/model/productModel.dart';
import 'package:splash_pages/utils/mycolors.dart';
import 'package:splash_pages/utils/textThemes.dart';

class ListView_Separated extends StatelessWidget{
  var datas=[
    Data(
        name: 'Orange',
        doubledata: 80,
        image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Ambersweet_oranges.jpg/1200px-Ambersweet_oranges.jpg",
        stringdata:'Orange is vitamin c rich fruit'),
    Data(
        name: "PineApple",
        numdata: 100,
        image:"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTzRDlpg1FNdyGLPUbBwx4-C8XVe6PI2OWP6P-HjfevHLt6-2WkF-QToj91SboSAlul03RQGw",
        stringdata:'Pineapple is vitamin c rich fruit'),
    Data(
        name: "Pizza",
        numdata: 220,
        image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShqNOrnCWng5zaBj2reNeU2QHAMaeyj1EJJhqbunN9kg&s",
        stringdata:''),
    Data(
        name: "Salad",
        numdata: 180,
        image:"https://veggiefunkitchen.com/wp-content/uploads/2023/06/rainbow-salad-4-scaled.jpg",
        stringdata:'Pizza'),
    Data(
        name: "Apple",
        numdata: 70,
        image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsEAv6Eio5S08EuB3FlBDY5ujy4K5dS5NfZyb2zbuhNARjvsZbJyYkMyHCVSXj2FR0gi8&usqp=CAU",
        stringdata:'Apple'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List View 3"),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.blue[300],
              child: Icon(Icons.add),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("Settings")),
                const PopupMenuItem(child: Text("Privacy Policy")),
              ];
            })
          ],
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReprdEOItQGiqM-K33l_XCuXgpmn4qyP-wMci1wNq79RT0mZT5eG_f6iCv6hqfnjTLhmo&usqp=CAU")),
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                          // topLeft: Radius.circular(60),
                          // topRight: Radius.circular(60)
                          )),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network("${datas[index].image}"),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(datas[index].name!),
                            Text(
                              datas[index].stringdata!,
                              style: MyTextThemes.bodyTextStyle,
                            ),
                            Text('\$${datas[index].numdata}'),
                          ],
                        ),
                        Icon(Icons.shopping_cart)
                      ]),
                  // child: Center(child: Text("data $index")),
                ),
              );
            },
            separatorBuilder: (context, index) {
              if (index % 3 == 0) {
                return Divider(
                  thickness: 2,
                  color: MyColors.buttonColors,
                );
              } else {
                return Container();
              }
            },
            itemCount: datas.length),
        );
    }
}