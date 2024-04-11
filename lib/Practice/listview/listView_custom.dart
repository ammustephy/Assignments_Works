import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Custom_Listview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) => Card())),
      // body: ListView.custom(childrenDelegate: SliverChildListDelegate([Card(), Card(), ...])),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) => const Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(Icons.person_outline_outlined),
          ),
          title: Text('Ammu'),
          subtitle: Text('7907761417'),
          trailing: Icon(Icons.phone),
        ),
      ),
          childCount: 10,
      )),

    //   way 2
      // body: ListView.custom(childrenDelegate: SliverChildListDelegate([Card(), Card(), ...])),


     // way 3
      // body: ListView.custom(childrenDelegate: SliverChildListDelegate(List.generate(10,(index)=>const Card(
    //   child: ListTile(
    //     leading: CircleAvatar(
    //       backgroundColor: Colors.green,
    //       child: Icon(Icons.person_outline_outlined),
    //     ),
    //     title: Text('Ammu'),
    //     subtitle: Text('7907761417'),
    //     trailing: Icon(Icons.phone),
    //   ),
    // ),
    // childCount: 10,

    // ))),

     );
  }
  
}