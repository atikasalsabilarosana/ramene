import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas2_flutter/login_page.dart';

class Landing extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/Plate.png', height: 43.5, width: 43.8),
                  SizedBox(height: 10),
                  Text("RAMENE", style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontSize: 16,
                    color: Colors.black,
                  )),
                  SizedBox(height: 40),
                  Image.asset('assets/images/Ramene.png', height: 237.2, width: 249.6),
                  SizedBox(height: 35),
                  Text("All your \nfavorite ramen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.black,
                  )),
                  SizedBox(height: 25),
                  Text("Delicious as is or toussed with your favorite ingredients",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins Light',
                    fontSize: 16,
                    color: Colors.grey,
                  )),
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            minimumSize: const Size.fromHeight(55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: (){
                             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage(),));
                          }, 
                          child: Text("SIGN IN",
                          style: TextStyle(
                            fontFamily: 'Poppins Bold',
                            fontSize: 18,
                          )),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 0,
                            side: BorderSide(width: 1, color: Colors.orangeAccent),
                            minimumSize: const Size.fromHeight(55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                          ),
                          onPressed: (){}, 
                          child: Text("SIGN UP",
                          style: TextStyle(
                            fontFamily: 'Poppins Bold',
                            fontSize: 18,
                            color: Colors.orangeAccent,
                          )),
                        ),    
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}