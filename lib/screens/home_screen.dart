import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

double spacerSpace = 40;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CFU CALCULATOR'),
      ),
      // make scrollable to fix overflow
      body: ListView(
        children: <Widget>[
          // space above

          SizedBox(height: spacerSpace),
          // top row with Number of colines and total dilution factor
          Row(
            children: <Widget>[
              // Number of colinies input box
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.bug_report_outlined,
                        size: 70.0,
                      ),

                      //  input for number of colonies
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Colonies',
                        ),
                      ),

                      FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text('NUMBER OF COLONIES')),
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
                      Icon(
                        Icons.science_outlined,
                        size: 70.0,
                      ),
                      //  input diltuion factor
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'TDF',
                        ),
                      ),
                      FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text('TOTAL DILUTION FACTOR')),
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

          SizedBox(
            height: spacerSpace,
          ),

          // add line spacer inbetween row so it looks like a division bar
          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          // Spacer

          SizedBox(
            height: spacerSpace,
          ),

          // middle row with volume of culture plate in ml

          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  // cultured plate icon
                  Icon(
                    Icons.scatter_plot_outlined,
                    size: 70.0,
                  ),

                  // input
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Culture Plated',
                    ),
                  ),
                  Text('CULTURE PLATED mL'),
                  Text('CULTURE PLATED RESULTS')
                ],
              ),
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.lightGreenAccent,
              ),
                        height: 250.0,
            ),
          ),
          // space below

          SizedBox(
            height: spacerSpace,
          ),

          // bottom caluclate button
          //  make bottom calculate button
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          // route to results page
          print('tap tap');
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
                color: Colors.lightGreen)),
      ),
    );
  }
}
