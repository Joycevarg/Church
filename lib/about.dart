import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
//Info("assets/images/bg2.jpg","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
//Info("assets/images/bg2.jpg","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")

class Aboutpage extends StatelessWidget
{
  final controller=PageController(
  );
  final pages=[
  Info("assets/images/bg2.jpg","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
  Info("assets/images/pg1.jpg","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
    Info("assets/images/pg1.jpg","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")

  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body:Column(children: <Widget>[
      Container(
          height: MediaQuery.of(context).size.height*0.95,
          child:
      PageView(
    controller: controller,
      children: pages,
    )),
      Container(
        height: MediaQuery.of(context).size.height*0.05,
        child:     PageIndicator(
          layout: PageIndicatorLayout.SCALE,
          size: 10.0,
          controller: controller,
          space: 5.0,
          count: pages.length,
          color: Colors.grey,
          activeColor: Colors.black,
        ),
      )
    ]
    ));
  }
}

class Info extends StatelessWidget
{
  final String imgasst;
  final String txt;
  Info(this.imgasst,this.txt);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(20),
              child:ClipRRect(
                borderRadius:BorderRadius.circular(20),
                child:Image.asset(imgasst,height: MediaQuery.of(context).size.height*0.5,),
              )),
          Container(padding:EdgeInsets.only(left: 20,),child:Align(alignment:Alignment.centerLeft,child:Text("About",style: TextStyle(color:Colors.grey,fontSize: 30),textAlign: TextAlign.left,))),
          Container(padding:EdgeInsets.fromLTRB(15, 5, 15, 10),child:Text(txt,style: TextStyle(color:Colors.black,fontSize: 20),textAlign: TextAlign.justify,)),

        ],
      ) ,
    );
  }
}

