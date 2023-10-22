import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/images/homeBG.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      print('1');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      elevation: 0,
                    ),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "near me",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {
                      print('2');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      elevation: 0,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "search",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {
                      print('3');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      elevation: 0,
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "recents",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
              ])),
    ));
  }
}
