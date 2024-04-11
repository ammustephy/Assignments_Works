import 'package:flutter/material.dart';
import 'package:splash_pages/utils/mycolors.dart';
import 'package:splash_pages/utils/textThemes.dart';

class HomePage extends StatelessWidget {
  var users = [
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
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Contacts",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: List.generate(
              users.length,
                  (index) => Card(
                color: Colors.black12,
                child: ListTile(
                  leading: CircleAvatar(
                    //backgroundColor: Colors.grey,
                    backgroundImage: AssetImage("${users[index]['pic']}",
                    ),
                  ),
                  trailing: _buildWidget(index),
                  title: Text("${users[index]['name']}"),
                  subtitle: Text("${users[index]['phone']}"),
                ),
              )),
        ),
      ),
    );
  }

  Widget _buildWidget(int index) {
    if (users[index]['unread'] == null) {
      return Text("${users[index]['time']}");
    } else {
      return Wrap(
        direction: Axis.vertical,
        children: [
          Text("${users[index]['time']}"),
          CircleAvatar(
            minRadius: 6,
            maxRadius: 14,
            child: Text("${users[index]['unread']}"),
          )
        ],
      );
    }
  }
}