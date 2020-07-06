import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //first I am going to get width of mobile screen

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            height: 280,
            //so this is container which is parent of purple container
            //this is parent of purple container
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.purple[700],
                  //this is pyrple container
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Row(
                      children: <Widget>[
                        Container(
                          //this container is for circular image
                          height: 60,
                          width: 60,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                                image: AssetImage(

                                  "asset/imag.jpg"
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Ammara",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Text("EasyCodingWithAmmara",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),

                        ),
                        //i use spacer class which fill all space btw column and icon
                        //which i am going to create
                        new Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(Icons.notifications_active,color: Colors.white,),
                        ),

                      ],
                    ),
                  ),
                ),
                new Positioned(
                  top: 125,
                  child: Container(
                    height: 180,
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 130,
                          width: width-50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 5,
                                offset: Offset(0,7),

                              )
                            ],
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.purple[700],

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: <Widget>[
                                    Text("My Option",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Spacer(),
                                    Text("20-33-2019",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 2,
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.message,
                                          size: 35,
                                          color: Colors.purple[700],
                                        ),
                                        Text("Message",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.home,
                                          size: 35,
                                          color: Colors.purple[700],
                                        ),
                                        Text("Home",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.category,
                                          size: 35,
                                          color: Colors.purple[700],
                                        ),
                                        Text("Category",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.attach_money,
                                          size: 35,
                                          color: Colors.purple[700],
                                        ),
                                        Text("Money",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.call,
                                          size: 40,
                                          color: Colors.purple[700],
                                        ),
                                        Text("Call",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Row(
                  children: <Widget>[
                    Image(
                      height: 35,
                      width: 35,
                      image: AssetImage(
                        "asset/shop.jpg"
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("E Shopping"),
                    Spacer(),
                    Image(
                      height: 35,
                      width: 35,
                      image: AssetImage(
                          "asset/bill.jpg"
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Text("Bill Payment"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 20, 0),
                child: Row(
                  children: <Widget>[
                    Image(
                      height: 35,
                      width: 35,
                      image: AssetImage(
                          "asset/charity.png"
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Charity"),
                    Spacer(),
                    Image(
                      height: 35,
                      width: 35,
                      image: AssetImage(
                          "asset/gift.png"
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text("Gift Received"),
                    ),
                  ],
                ),
              ),
              //paste one more time to create 3 rows
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
                child: Row(
                  children: <Widget>[
                    Image(
                      height: 35,
                      width: 35,
                      image: AssetImage(
                          "asset/pay.jpg"
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Pay Slip"),
                    Spacer(),
                    Image(
                      height: 35,
                      width: 35,
                      image: AssetImage(
                          "asset/cash.png"
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text("Payment Back"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
            child: Container(
              child: Container(
                height: 150,
                child: Swiper(
                  itemCount: 5,
                  viewportFraction: 0.5,
                  scale: 0.5,

                  //set width of image

                  itemBuilder: (BuildContext context,int index){
                    if(index==0){
                      return Image1("asset/bg1.jpg");
                      //create Image1() function
                    }
                    else if(index==1){
                      return Image1("asset/bg2.jpg");
                    }
                    else if(index==2){
                      return Image1("asset/bg3.jpg");
                    }
                    else if(index==3){
                      return Image1("asset/bg4.jpg");
                    }
                    else{
                      return Image1("asset/bg8.jpg");
                    }
                  },

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget Image1(dynamic image){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter:  ColorFilter.mode(Colors.purple[700].withOpacity(0.8),BlendMode.dstATop),
          image: AssetImage(image),
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}

//now create asset folder and paste image in it
//if you did not see this get dependy then press control+ s

//now check output
//give colour to container

//set text  and image
//make this image to fit in circle
//to make text in start
//in stack all child comes above each other
//so i give top margin to make this container below

//now check output


//now create this container

//copy some images you want and paste it in asset folder

//run code

//uninstall app and run again

//add dependency for it

//paste images to asset folder

//run code

//now create blog page