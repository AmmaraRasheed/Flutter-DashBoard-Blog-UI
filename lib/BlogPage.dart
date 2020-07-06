import 'package:flutter/material.dart';
class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  final List<String> image =['asset/bg1.jpg','asset/bg2.jpg','asset/bg3.PNG',
    'asset/bg4.jpg','asset/bg5.jpg'
  ];

  //first download all pictures from google and then resize all in paint or any other tool
  //to make all images equal
  //i show you how? ok
  //like this make all pictures equal size
  //then paste here
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: image.length,
      itemBuilder: (context,index){
        return Container(
          child: Card(
            color: Colors.grey[100],
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Image.asset(image[index],scale: 0.9),
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: Text("My LOVELY SCENERY",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text("ListView. builder is a way of constructing the list where children's (Widgets) are built on demand. However, instead of returning a static widget, it calls a function which can be called multiple times (based on itemCount ) and it's possible to return different widget at each call",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.purple[900],
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    //make all items center
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Button1(Icon(Icons.ac_unit,color: Colors.purple[900],)),
                      Button1(Icon(Icons.cached,color: Colors.purple[900],)),
                      Button1(Icon(Icons.wifi,color: Colors.purple[900],)),
                      Button1(Icon(Icons.wb_iridescent,color: Colors.purple[900],)),
                      Button1(Icon(Icons.account_balance,color: Colors.purple[900],))
                      //you can use of your choice
                      //now create button1 function
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  Widget Button1(Icon icon1){
    return Padding(
      padding: const EdgeInsets.all(8),
      child: CircleAvatar(
        backgroundColor: Colors.purple[100],
        child: IconButton(
          icon: icon1,
          onPressed: (){},
        ),
      ),
    );
  }
}


//Now we done with this listview so now i am going to run code
//are yoou ready????????? Tell me comment box ??
//copy some text and paste here

//Did you like this video tell me in comment section
//se you soon
//Allah HAfiz
//Also check code link in description box
