import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CFU CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          // top row with Number of colines and total dilution factor
          Row(
            children: <Widget>[
              // Number of colinies input box
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('NUMBER OF COLONIES'),
                      Text('NOC Result'),
                    ],
                  ),
                  margin: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ),


              // multiplation icon 
                Icon(
      Icons.close,
      color: Colors.green,
      size: 30.0,
    ),




              // total dilution factor box

              Expanded(
                  child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('TOTAL DILUTION FACTOR'),
                    // total dilution factor result
                    Text('TDF Result'),
                  ],
                ),
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.lightGreenAccent,
                ),
              ),
              ),

              // Expanded(child: ),
            ],
          ),

          // add line spacer inbetween row so it looks like a division bar
   const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
          // Su



          // middle row with volume of culture plate in ml

           Expanded(  
            child: Container(  
              child: Column(
                children: <Widget>[
                  Text('CULTURE PLATED mL'), 
                  Text('CULTURE PLATED RESULTS')
                ],
                


              ),
                 margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.lightGreenAccent,
                ),

            ),

          ),
         

          // bottom caluclate button
          //  make bottom calculate button
          GestureDetector(
            onTap: () { 
              // route to results page 

            },
            child: Container(
              child: Container(  
                child: Center(  
                  child: Text('CALCUALTE'),
                ), 
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 20.0), 
                width: double.infinity,  
                height: 80.0,
                color: Colors.lightGreen
              )
          
            ),
          ),

        ],
      ),
    );
  }
}
