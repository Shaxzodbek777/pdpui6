import 'package:flutter/material.dart';

import '../animation/FadeAnimation.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static final String id  = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  bool _islogin = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1)
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FadeAnimation(1, Text("Find the best parties near you", style: TextStyle(color: Colors.yellow, fontSize: 40, fontWeight: FontWeight.bold),),),

              SizedBox(height: 30,),
              Text('Let us find you a tutoral for your interfise', style: TextStyle(color: Colors.green, fontSize: 30),),
              SizedBox(height: 150,),

              _islogin ?

              Container(
                height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.orange

              ),
                child: Center(
                  child: Text("Start", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ) :

             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.red
                   ),
                   child: Text(" Google ", style:TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                   onPressed: (){},
                 ),
                 SizedBox(width: 15,),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.blue
                   ),
                   child: Text("Fackebook", style:TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                   onPressed: (){},
                 ),
               ],
             ),
              SizedBox(height: 30,)
            ],
          ),

        ),
      ),
    );
  }
}
