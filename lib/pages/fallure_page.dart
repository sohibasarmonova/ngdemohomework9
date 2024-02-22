import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';
class FallurePage extends StatefulWidget {
  static final String id="fallure_page";

  const FallurePage({super.key});

  @override
  State<FallurePage> createState() => _FallurePageState();
}

class _FallurePageState extends State<FallurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(

           // color: Colors.pink,
            margin: EdgeInsets.only(top:150,left: 70),
            child:Lottie.asset("assets/animations/alert.json"),
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left:55),
            //color: Colors.brown,
            child: Text("Success ",style: TextStyle(fontSize: 50,color: Colors.red),),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 55),
            color: Colors.grey,
            height: 45,
            width: 150,
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text("Continue",style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.pushReplacementNamed(context,HomePage.id);

              },
            ),
          ),
        ],
      ),


    );
  }
}
