import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  var chats = [
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
              const PopupMenuItem(child: Text("New group")),
              const PopupMenuItem(child: Text("New broadcast")),
              const PopupMenuItem(child: Text("Linked devices")),
              const PopupMenuItem(child: Text("Starred messages")),
              const PopupMenuItem(child: Text("Payment")),
              const PopupMenuItem(child: Text("Settings")),
            ];
 }
          )
        ],

        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black,
          // selectedItemColor: Colors.black, // Set the color of the selected item label
          // unselectedItemColor: Colors.black,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.black,),label:'Chat',),
        BottomNavigationBarItem(icon: Icon(Icons.update,color: Colors.black,),label:'Updates',),
        BottomNavigationBarItem(icon: Icon(Icons.groups,color: Colors.black,),label:'Communities',),
        BottomNavigationBarItem(icon: Icon(Icons.call,color: Colors.black,), label:'Calls', )
      ],
        selectedLabelStyle: TextStyle(color: Colors.black), // Set the text color of the selected label
        unselectedLabelStyle: TextStyle(color: Colors.black),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: List.generate(
                chats.length,
                    (index) =>
                    Card(
                      color: Colors.white,
                      child: ListTile(
                        leading: CircleAvatar(
                          //backgroundColor: Colors.grey,
                          backgroundImage: AssetImage("${chats[index]['pic']}",
                          ),
                        ),
                        trailing: _buildWidget(index),
                        title: Text("${chats[index]['name']}",style: TextStyle(color: Colors.black),),
                        subtitle: Text("${chats[index]['phone']}",style: TextStyle(color: Colors.black)),
                      ),
                    )),
          ),
        ),
      ),
    );
  }

  Widget _buildWidget(int index) {
    if (chats[index]['unread'] == null) {
      return Text("${chats[index]['time']}");
    } else {
      return Wrap(
        direction: Axis.vertical,
        children: [
          Text("${chats[index]['time']}"),
          CircleAvatar(

            minRadius: 6,
            maxRadius: 10,
            child: Text("${chats[index]['unread']}", style: TextStyle(fontSize: 10,color: Colors.black54,)),
          )

        ],

      );


    }
  }

}