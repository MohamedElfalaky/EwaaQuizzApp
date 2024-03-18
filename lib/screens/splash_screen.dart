import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Icon(Icons.add),
        // ),
        body: Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          // border: Border.all(width: 6, color: Colors.red),
          image: DecorationImage(
              image: AssetImage("assets/app_backgroun_image.jpg"),
              fit: BoxFit.cover)),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height) *
                1 /
                4, // responsive design
          ),
          Image.asset(
            "assets/app_logo.png",
            height: 150,
            width: 150,
          ),
          Text(
            "Welcome to Quiz App",
            style: TextStyle(
                fontSize: 25, color: Colors.brown, fontWeight: FontWeight.bold),
          ),
          Spacer(), // بياخد المسافة الفاضية المتاحة في المكان اللي هو فيه

          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  // style:
                  //     ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {},
                  child: Text("إبدأ اللعبة")))
        ],
      ),
    ));
  }
}
