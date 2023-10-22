import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ), //add your own icons here
              label: 'Saved',
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.near_me),
              label: 'Near Me',
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.place),
              label: 'Map',
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
          ],
          currentIndex: currentPageIndex,
          selectedItemColor: Color.fromARGB(150, 255, 255, 255),
          onTap: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          }),
      body: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/homeBG.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/saved.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/NearMe.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          child: Center(child: Text('map here')),
        ),
      ][currentPageIndex],
    );
  }
}
