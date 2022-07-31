//there is widget for everything and everything is a widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp()); //app itself is a widget
}

//two types of design
//Material - Android
//Cupertino - iOS

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
    );
  }
}

//scaffold is a screen
/*
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  String name = "hello world";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //background colour
      appBar: AppBar(
        backgroundColor: Colors.red[900],
      ), //scaffold has 2 parts appBar and body appBar at top and rest is the body
      body: SafeArea(
          child: Container(
        width: double.infinity, //this takes the maximum width of the screen
        //ie the word is currently correctly fitted inside the screen so inorder to avoid it we allocated maximum width to the container made using this method
        //free space is created with in it (maximum width created)
        height: double.infinity,
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,//ccreates maximum space between the widgets of the coloumns
          //to add items horizontally we add coloumns and for vertical purpose we add rows
          children: [
            //is added like array
            Text(
              //array of children is created and text is the first child inside the coloumn array
              name, //mostly const is added for hardcoded items
              style: const TextStyle(
                  //add const to areas where there is no change during the runtime
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            TextButton(
                //text button is the another child of the parent and text button is a normal button type with two params
                //first is what the button should do on click it and the other is the text that should be displayed inside the button
                onPressed: () {
                  print("button clicked");
                },
                child: Text("click me")),

            ElevatedButton(
                //same as the text button has style more elevated with two params
                onPressed: () {
                  print("elevated clicked");
                },
                child: Text("elevated button")),

            Row( //here row is the child of the coloumn
            //ie to align things horizontally but after a vertical component we use row as the child of the colomn
            //if it is inside the coloumn or a coloumn is inside a row it is aligned as it used to be (it starts from the right incase of coloumns)
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainaxis of the coloumn is from top to bottom and mainaxis of the row is from left to right
              //if we wanna align the items we could edit the main and cross axises
              //cross axis of row is from top to bottom and coloumn is from left to right
              
              
              children: [
                TextButton(
                    onPressed: () {
                      print("row text clicked");
                    },
                    child: Text("row text")),

                ElevatedButton(onPressed: (){
                  print("row elevated clicked");
                }, child: Text("row elevated")),

                IconButton(onPressed: (){
                  print("icon clicked");
                }, icon: Icon(Icons.mic_external_off_rounded))
              ],
            )
          ],
        ),
      )),
    );
  }
}*/

// in this example we created a column widget inside of the safearea and for that column which has got different childrens
//each of the children is a container which has got another column as the child and each children of that column has got different widgets as childrens
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  String name = "hello world";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, //background colour
        appBar: AppBar(
          backgroundColor: Colors.red[900],
        ), //scaffold has 2 parts appBar and body appBar at top and rest is the body
        body: SafeArea(
          child: Column(
            //safe area is divided into columns
            children: [
              //each has multiple children
              Expanded(
                flex: 2,//spacing is controlled by flex
                //just like the ratio of the screen taken by
                //flex decides the alignment of the container
                //for a equally divided 'expanded' the flex might be also equally divided
                // to give an item more space we can edit the flex variable 
                child: Container(
                  color: Colors.lightGreen,
                    child: //each children has got a container
                        Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //which contains columns that contains different widgets as childrens
                  children: [
                    Text(name,style: TextStyle(
                      fontSize:90
                    ),),
                    TextButton(onPressed: () {}, child: Text("col1")),
                    ElevatedButton(onPressed: () {}, child: Text("ele1"))
                  ],
                )),
              ),
             
              Expanded(
                child: Container(
                  decoration: BoxDecoration( // we can decorate the container using this boxdecoration widget
                    color: Colors.deepPurple,//different decoration widgets are available for decorating 
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 10
                    ),

                  ),
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,style: TextStyle(
                      fontSize: 80
                    ),),
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
