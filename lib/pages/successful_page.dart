import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ng_demohomework9/pages/home_page.dart';
class SuccessfulPage extends StatefulWidget {
  static final String id="successful_page";

  const SuccessfulPage({super.key});

  @override
  State<SuccessfulPage> createState() => _SuccessfulPageState();
}

class _SuccessfulPageState extends State<SuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            //color: Colors.pink,
            margin: EdgeInsets.only(top:150),
            child: Lottie.asset("assets/animations/successful.json"),
          ),
          SizedBox(height: 40,),
          Container(
            //color: Colors.brown,
            child: Text("Success ",style: TextStyle(fontSize: 50,color: Colors.green),),
          ),
          SizedBox(height: 15,),
          Container(

            height: 45,
            width: 150,
            child: MaterialButton(
              color: Colors.green,
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
