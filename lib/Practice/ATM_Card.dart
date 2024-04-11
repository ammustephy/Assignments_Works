import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AtmCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSvFGCBzmWJ6kLtUB66UtRHWweI2FsSseezA&s'))),
              // color: Colors.blueAccent,
              // height: 200,
              // width: 350,
            ),
            Positioned(
              left: 120,
                top: 290,
                child: Text('HDFC Bank', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 8,),

            )),
            Positioned(
              left: 350,
                top: 290,
                right: 10,
                child: Text('DEBIT',style: TextStyle(color: Colors.white,fontSize: 10),
                )),
            Positioned(
               left: 160,
                bottom: 350,
                child: Text('> M I L L E N N I A <', style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 20),)),
            Positioned(
              left: 350,
                bottom: 350,
                child: Transform.rotate(
                angle: 60 * 3.1415926535 / 180, // Rotate by 45 degrees (converted to radians)
                child: Image.network(
                'https://cdn.iconscout.com/icon/free/png-512/free-wifi-1767906-1502159.png?f=webp&w=256',
                width: 30, // specify the desired width
                height: 30, // specify the desired height
                fit: BoxFit.cover, )
                )
            ),
            Positioned(
              left: 130,
                top: 330,
                child:Image.network('https://cdn.iconscout.com/icon/premium/png-512-thumb/card-chip-6280445-5238265.png?f=webp&w=256',
                width: 28,
                height: 28,) 
            ),
            Positioned(
              left: 350,
                bottom: 300,
                child: Text('Visa',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
                )
            ),
            Positioned(
                left: 350,
                bottom: 290,
                child: Text('Signature',style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold,color: Colors.white),
                )
            )

          ],
        ),
      ),
    );
  }

}