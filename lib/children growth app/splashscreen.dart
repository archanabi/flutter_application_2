import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_application_2/children%20growth%20app/cgm.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
    void initState(){
        super.initState();
         Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => ChildernGrowthCalculation()));
    });
    
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:const Color.fromARGB(255, 218, 113, 236),
        body: 
        
    Center(
      child: Column(
            children: [
              SizedBox(height: 230,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text(" Child Growth",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w800),)),
              ),
            ],
          ),
    ),
        );

  }
}























































//import 'dart:async';

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/childeren%20growth%20app/cgm.dart';

// class Splashscreen extends StatefulWidget {
//   const Splashscreen({super.key});

//   @override
//   State<Splashscreen> createState() => _SplashscreenState();
// }

// class _SplashscreenState extends State<Splashscreen> {
//   @override
//   void initState(){
//     super.initState();
//     Timer(Duration(seconds: 3), () {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => ChildernGrowthCalculation()));
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     body: Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(colors: [
//           Colors.deepPurpleAccent,
//           const Color.fromARGB(255, 68, 4, 245),
//           const Color.fromARGB(118, 124, 77, 255),
//           const Color.fromARGB(255, 179, 155, 245),

//         ])
//       ),
//       child: Center(child: Text("Monitoring Child Growth",style: TextStyle(fontSize: 30.0,color: Colors.white),)),
//     ),
    
  
//     );
//   }
// } 