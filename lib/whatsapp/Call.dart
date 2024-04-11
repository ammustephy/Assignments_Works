import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget{
  var calls = [
    {
      'name': "Ammu",
      'phone': 7907761417,
      'pic': "assets/images/panda9.jpg",
      "time": 1.20,
      "unread": 2
    },
    {
      'name': "Balu",
      'phone': 8129265659,
      'pic': "assets/images/panda2.jpg",
      "time": 11.15,
      "unread": null
    },
    {
      'name': "Sonia",
      'phone': 9087433321,
      'pic': "assets/images/panda3.jpg",
      "time": 2.30,
      "unread": 2
    },
    {
      'name': "Nelson",
      'phone': 9567367304,
      'pic': "assets/images/panda4.jpg",
      "time": 11.30,
      "unread": 2
    },
    {
      'name': "Reetha",
      'phone': 9567367304,
      'pic': "assets/images/panda5.jpg",
      "time": 5.45,
      "unread": 1
    },
    {
      'name': "Abhishek",
      'phone': 99347654321,
      'pic': "assets/images/panda6.jpg",
      "time": 5.00,
      "unread": null
    },
    {
      'name': "Aleena",
      'phone': 9087654321,
      'pic': "assets/images/panda7.jpg",
      "time": 7.30,
      "unread": null
    },
    {
      'name': "Sani",
      'phone': 9087654321,
      'pic': "assets/images/panda7.jpg",
      "time": 7.30,
      "unread": null
    },
    {
      'name': "Chettan",
      'phone': 9087654321,
      'pic': "assets/images/panda7.jpg",
      "time": 7.30,
      "unread": null
    },
    {
      'name': "Chechi",
      'phone': 9087654321,
      'pic': "assets/images/panda7.jpg",
      "time": 7.30,
      "unread": 3
    },
    {
      'name': "Amma",
      'phone': 9087654321,
      'pic': "assets/images/panda7.jpg",
      "time": 7.30,
      "unread": null
    },
    {
      'name': "Pappa",
      'phone': 9087654321,
      'pic': "assets/images/panda7.jpg",
      "time": 7.30,
      "unread": 1
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp',
          style: TextStyle(color: Colors.black),),
        actions: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt, color: Colors.black,),),
              SizedBox(width: 16),
              IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.black,),)
            ],
          ),


          PopupMenuButton(itemBuilder: (context){
            return [
              const PopupMenuItem(child: Text("Clear call log")),
              const PopupMenuItem(child: Text("Settings")),
            ];
          }
          )
        ],

        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: List.generate(
                calls.length,
                    (index) =>
                    Card(
                      color: Colors.white,
                      child: ListTile(
                        leading: CircleAvatar(
                          //backgroundColor: Colors.grey,
                          backgroundImage: AssetImage("${calls[index]['pic']}",
                          ),
                        ),
                         // trailing: _buildWidget(index),
                        title: Text("${calls[index]['name']}",style: TextStyle(color: Colors.black),),
                         subtitle: Text("${calls[index]['time']}",style: TextStyle(color: Colors.black)),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.call, color: Colors.green,)),

                      ),
                    )),
          ),
        ),
      ),
    );
  }
}