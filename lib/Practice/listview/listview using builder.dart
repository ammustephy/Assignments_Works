import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_pages/model/productModel.dart';
import 'package:splash_pages/utils/mycolors.dart';
import 'package:splash_pages/utils/textThemes.dart';

// class ListView_Builder extends StatelessWidget{
//   List<Map> products = [
//   {
//   'Product name': "Apple",
//   'pic': "assets/images/panda9.jpg",
//   "Price": 1.20
// },
// {
//   'Product name': "Orenge",
//   'pic': "assets/images/panda9.jpg",
//   "Price": 1.20
// },
// {
//   'Product name': "Pineapple",
//   'pic': "assets/images/panda9.jpg",
//   "Price": 1.20
// },
// ];

class ListView_Builder extends StatelessWidget {
  List<Data> products = [
    Data(
        name: "Orange",
        numdata: 120,
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsEAv6Eio5S08EuB3FlBDY5ujy4K5dS5NfZyb2zbuhNARjvsZbJyYkMyHCVSXj2FR0gi8&usqp=CAU"),
    Data(
        name: "PineApple",
        numdata: 100,
        image:
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTzRDlpg1FNdyGLPUbBwx4-C8XVe6PI2OWP6P-HjfevHLt6-2WkF-QToj91SboSAlul03RQGw"),
    Data(
        name: "Pizza",
        numdata: 220,
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShqNOrnCWng5zaBj2reNeU2QHAMaeyj1EJJhqbunN9kg&s"),
    Data(
        name: "Salad",
        numdata: 180,
        image:
        "https://veggiefunkitchen.com/wp-content/uploads/2023/06/rainbow-salad-4-scaled.jpg"),
    Data(
        name: "Orange",
        numdata: 70,
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsEAv6Eio5S08EuB3FlBDY5ujy4K5dS5NfZyb2zbuhNARjvsZbJyYkMyHCVSXj2FR0gi8&usqp=CAU"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Products"),
          backgroundColor: MyColors.basicColor,
        ),
        body: ListView(
          ///products.map() => this will fetch each map from product list and iterates is
          children: products
              .map((product) => Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              color: Colors.grey,
              child: Column(children: [
                SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Image.network(
                      product.image!,
                      fit: BoxFit.cover,
                    )),
                Text(
                  product.name!,
                  style: MyTextThemes.textHeading,
                ),
                Text('${product.numdata!}',
                    style: MyTextThemes.bodyTextStyle)
              ]),
            ),
          )).toList(),

          /// toList()- since we need children property as list and the result of .map is map so we need to convert map to List
        )

      // body: ListView.builder(
      //     itemCount: products.length,
      //     itemBuilder: (context, index) {
      //       return Card(
      //         color: MyColors.basicColor,
      //         child: ListTile(
      //           leading: SizedBox(
      //               height: 100,
      //               width: 100,
      //               child: Image.network(products[index].image!,
      //                 fit: BoxFit.cover,)),
      //           title: Text(products[index].name!),
      //           subtitle: Text('${products[index].numdata!}'),
      //           trailing: Icon(Icons.favorite_border),
      //         ),
      //       );
      //     }),
    );
  }
}