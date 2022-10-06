import 'package:flutter/material.dart';
import 'package:tugas2_flutter/landing.dart';

class home_page extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<String> kumpulanGambar = [
      "image_1.png",
      "image_2.png",
      "image_3.png",
      "image_4.png",
      "image_5.png",
      "image_6.png"
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications,
                color: const Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {},
          ),
        ],
          ),
           bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.grey),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined, color: Colors.grey),
              label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined,
                  color: Colors.grey),
              label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Colors.grey),
              label: 'Profile'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(height: 5),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
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
                            labelText: "Search",
                            hintText: "Search",
                            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins Light',
                              fontSize: 16,
                            ),
                          ),
                      ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Top Menu",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins Bold',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                      )),
                    ),
                    SizedBox(height: 5),
                    Padding(padding: EdgeInsets.only(bottom: 5)),
                    Expanded(
                      child: GridView.builder(
                        itemCount: kumpulanGambar.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/${kumpulanGambar[i]}'),
                          );
                        },
                      ),
                    )
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