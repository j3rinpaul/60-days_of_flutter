import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp()); //app itself is a widget
}

//two types of design
//Material - Android
//Cupertino - iOS

//the MyApp extends the statelesswidget and everything to be made in the app is found on the this class

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //themeData is a class
          primaryColor: Colors.blueAccent //Color is a class
          ),
      home: HomeScreen(), //homescreen class is given as optional parameter home
      //here all the elements from which are being made is assembled just like react
      //in react every other elements is assemled to app 
      //same concept
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  String name = "hello world";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, //background colour
        appBar: AppBar(
          backgroundColor: Colors.black26,
        ), //scaffold has 2 parts appBar and body appBar at top and rest is the body
        body: SafeArea(
          child: Column(
            //safe area is divided into columns
            children: [
              //each has multiple children
              Expanded(
                flex: 2, //spacing is controlled by flex
                //just like the ratio of the screen taken by
                //flex decides the alignment of the container
                //for a equally divided 'expanded' the flex might be also equally divided
                // to give an item more space we can edit the flex variable
                child: Container(
                    color: Colors.amberAccent,
                    child: //each children has got a container
                        Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //which contains columns that contains different widgets as childrens
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontSize: 90),
                        ),
                        TextButton(onPressed: () {}, child: Text("col1")),
                        ElevatedButton(onPressed: () {}, child: Text("ele1"))
                      ],
                    )),
              ),

              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      // we can decorate the container using this boxdecoration widget
                      color: Colors
                          .deepPurple, //different decoration widgets are available for decorating
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.deepOrange, width: 10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontSize: 80),
                        ),
                        TextButton(onPressed: () {}, child: Text("col2")),
                        ElevatedButton(onPressed: () {}, child: Text("ele2"))
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
