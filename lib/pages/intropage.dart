import 'package:flutter/material.dart';
import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
         
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo 
      
            Padding(
              padding: const EdgeInsets.only(top:200.0,),
              child: Image.asset('images/klogo.png',height: 120,),
            ),

            SizedBox(height: 56,), 
            
            
            //title

            Text("Easy To Shop",style: TextStyle(
              color: Color.fromARGB(255, 14, 68, 68),
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),


            SizedBox(height: 56,),

            //subtitle

            Text("Brand New Products and Things made with premium Quality",style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 18, 
            ),textAlign: TextAlign.center,),
            //startButon
            SizedBox(height:50 ,),

            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 14, 68, 68),
                    borderRadius: BorderRadius.circular(12),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Center(
                      child: Text("Shop Now",
                      style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 150,),

            Text("version 0.0.1")

          ],
        ),
      ),
    );
  }
}