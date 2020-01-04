import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(
              height: 50,
            ),
       Container(
           margin: EdgeInsets.all(30.0),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10.0),
             boxShadow: [
               BoxShadow(
                 blurRadius: 5.0,
                 color: Colors.black.withOpacity(.5),
                 offset: Offset(2.0, 3.0),
               ),
             ],
             //shape: BoxShape.rectangle,
             //border: Border.all(),
             color: Colors.white,
           ),
           child:
          TextField(

          decoration: InputDecoration(
              focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
            border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: 'Enter a search term'
        ),
    )),
          ]
        )
    );
  }

}