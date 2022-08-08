import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import '../widgets/constants.dart';

import '../models/calculator_brain.dart';
import '../screens/results_display.dart';

double spacerSpace = 40;

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int colonies = 0;
  double tdf = 0;
  double culture_plated = 0;

  final barColors = red;

  final boxBackgroundColor = yellowOrange;

  final textIconColors = red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CFU CALCULATOR',
          style: kCalculateBottomButtonStyle,
        ),
        backgroundColor: barColors,
      ),
      // make scrollable to fix overflow
      body: Container(
        color: orange,
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: <Widget>[
            // space above

            SizedBox(height: 120),
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
                          color: textIconColors,
                          size: 70.0,
                        ),

                        // number
                        Text(
                          colonies.toString(),
                          style: inputCardStyle,
                        ),

                        //  input for number of colonies
                        TextField(
                          // controller:  myController ,
                          onChanged: (text) {
                            setState(() {
                              colonies = int.parse(text);
                            });
                          },

                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '# of Colonies',
                          ),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: boxBackgroundColor,
                    ),
                  ),
                ),

                // multiplation icon
                Icon(
                  Icons.close,
                  color: textIconColors,
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
                          color: textIconColors,
                          size: 70.0,
                        ),

                        // number
                        Text(
                          tdf.toString(),
                          style: inputCardStyle,
                        ),

                        //  input diltuion factor
                        TextField(
                          onChanged: (text) {
                            setState(() {
                              tdf = double.parse(text);
                            });

                            print('First text field: $colonies');
                          },
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Dilution Factor',
                          ),
                        ),

                        // total dilution factor result
                      ],
                    ),
                    margin: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: boxBackgroundColor,
                    ),
                  ),
                ),

                // Expanded(child: ),
              ],
            ),

            SizedBox(
              height: 5,
            ),

            // add line spacer inbetween row so it looks like a division bar
            const Divider(
              height: 20,
              thickness: 2.5,
              indent: 20,
              endIndent: 20,
              color: Color(0xFFF37878),
            ),
            // Spacer

            SizedBox(
              height: 5,
            ),

            // middle row with volume of culture plate in ml

            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 35,
                    ),
                    // cultured plate icon
                    Icon(
                      Icons.scatter_plot_outlined,
                      size: 70.0,
                      color: textIconColors,
                    ),
                    Text(
                      culture_plated.toString(),
                      style: inputCardStyle,
                    ),

                    // input
                    TextField(
                      onChanged: (text) {
                        setState(() {
                          culture_plated = double.parse(text);
                        });

                        print('First text field: $colonies');
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Culture Plated (mL)',
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: boxBackgroundColor,
                ),
                height: 200.0,
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
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          CalculatorBrain calc = CalculatorBrain(
              colonies: colonies, tdf: tdf, culture_plated: culture_plated);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultsDisplay(
                cfuResult: calc.calculatorCFU(),
              ),
            ),
          );
        },
        child: Container(
            child: Container(
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: kCalculateBottomButtonStyle,
                  ),
                ),
                // margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 20.0),
                width: double.infinity,
                height: 80.0,
                color: barColors)),
      ),
    );
  }
}
