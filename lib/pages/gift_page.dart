import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';
class GiftPage extends StatefulWidget {
  static final String id="gift_page";

  const GiftPage({super.key});

  @override
  State<GiftPage> createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [
          Container(
           // color: Colors.pink,
            margin: EdgeInsets.only(top:150,left: 70),
            child:Lottie.asset("assets/animations/gift.json"),
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left: 45),
            //color: Colors.brown,
            child: Text("Success",style: TextStyle(fontSize: 50,color: Colors.brown),),
          ),
          SizedBox(height: 15,),
          Container(
                margin: EdgeInsets.only(left: 50),
            height: 50,
            width: 150,
            child: MaterialButton(
              color: Colors.brown,
              textColor: Colors.white,
              child: Text("Continue",style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.pushReplacementNamed(context,HomePage.id);
              },
            ),
          ),
        ],
      ),


    ) ;
  }
}
