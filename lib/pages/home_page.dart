import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ng_demohomework9/pages/fallure_page.dart';
import 'package:ng_demohomework9/pages/gift_page.dart';
import 'package:ng_demohomework9/pages/successful_page.dart';

class HomePage extends StatefulWidget {
  static final String id="detail_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.pink,
        title: Text(
          "Lottie Animations",
          style: TextStyle(color: Colors.white,fontSize: 25),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 150),
            height: 60,
            width: 150,
            child: MaterialButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text("Success",style: TextStyle(fontSize: 20),),
              onPressed: () {
               Navigator.pushReplacementNamed(context, SuccessfulPage.id);
              },
            ),
          ),
            SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 150),
            height: 60,
            width: 150,
            child: MaterialButton(
              color: Colors.pink,
              textColor: Colors.white,
              child: Text("Fallure",style: TextStyle(fontSize: 20),),
              onPressed: () {

                Navigator.pushReplacementNamed(context,FallurePage.id);

              },
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 150),
            height: 60,
            width: 150,
            child: MaterialButton(
              color: Colors.brown,
              textColor: Colors.white,
              child: Text("Gift",style: TextStyle(fontSize: 20),),
              onPressed: () {

                Navigator.pushReplacementNamed(context,GiftPage.id);

              },
            ),
          ),
        ],
      ),
    );
  }
}
