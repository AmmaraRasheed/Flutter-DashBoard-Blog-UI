import 'package:flutter/material.dart';
import 'package:home_page/CallPage.dart';
import 'package:home_page/BlogPage.dart';
import 'package:home_page/HomePage.dart';
import 'package:home_page/OptionPage.dart';

class TabLayoutMy extends StatefulWidget {
  @override
  _TabLayoutMyState createState() => _TabLayoutMyState();
}

class _TabLayoutMyState extends State<TabLayoutMy> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int newIndex){
            setState(() {
              index=newIndex;
            });
        },
        backgroundColor: Colors.purple[700],
        type: BottomNavigationBarType.fixed,
        //I make this text hide by using these two line
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.call,color: Colors.white,),
            title: Text("Home",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            activeIcon: Icon(Icons.call,
              color: Colors.purpleAccent,
              size: 30,//make icon big when it is active
            ),
            // this text is hide not show
          ),
          BottomNavigationBarItem(

            icon: new Icon(Icons.home,color: Colors.white,),
            title: Text("Home",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            activeIcon: Icon(Icons.home,
              color: Colors.purpleAccent,
              size: 30,//make icon big when it is active
            ),
            // this text is hide not show
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.category,color: Colors.white,),
            title: Text("Home",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            activeIcon: Icon(Icons.category,
              color: Colors.purpleAccent,
              size: 30,//make icon big when it is active
            ),
            // this text is hide not show
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.account_balance,color: Colors.white,),
            title: Text("Home",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            activeIcon: Icon(Icons.account_balance,
              color: Colors.purpleAccent,
              size: 30,//make icon big when it is active
            ),
            // this text is hide not show
          ),
        ],
      ),

      body: new IndexedStack(
        index: index,
        children: <Widget>[
          //new i am going to create 4 pages for this tablayout
          //then call them
          HomePage(),
          BlogPage(),
          CallPage(),
          SettingPage(),//press alt+enter to import page
        ],
      ),
    );
  }
}

//Now run code to show you output
//but first call this call from the main.dart
//here i chnage icon on active
//now I am going to create home page
