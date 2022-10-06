import 'package:flutter/material.dart';
import 'package:tugas2_flutter/home_page.dart';
import 'package:tugas2_flutter/landing.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, color: Colors.black,),
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Landing(),));
          },
          ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.8),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Welcome Back",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins Bold',
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.black,
                      )),
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Login to your account",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins Bold',
                        fontSize: 16,
                        color: Colors.grey,
                      )),
                    ),
                    SizedBox(height: 35),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Email",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins Light',
                        fontSize: 16,
                        color: Colors.black,
                      )),
                    ),
                    SizedBox(height: 10),
                    TextField(
                        controller: null,
                        style: TextStyle(
                          fontFamily: 'Poppins Light',
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Email",
                          hintText: "Email",
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins Light',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins Light',
                        fontSize: 16,
                        color: Colors.black,
                      )),
                    ),
                    SizedBox(height: 10,),
                        TextField(
                        controller: null,
                        style: TextStyle(
                          fontFamily: 'Poppins Light',
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Password",
                          hintText: "Password",
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins Light',
                            fontSize: 16,
                          ),
                        ),
                    ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Forget password?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins Light',
                        fontSize: 16,
                        color: Colors.orange,
                      )),
                    ),
                          SizedBox(height: 150,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            minimumSize: const Size.fromHeight(55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                            onPressed: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>home_page(),));
                            }, 
                            child: Text("Login",
                            style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 18,
                              color: Colors.white,
                            )),
                          ),
                            SizedBox(height: 0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text('Dont have an account yet?'),
                              TextButton(
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(fontSize: 15,
                                  color: Colors.orangeAccent,),
                                ),
                                onPressed: () {
                                  //signup screen
                                },
                              )]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),

    );
  }
}

 