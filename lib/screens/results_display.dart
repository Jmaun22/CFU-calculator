import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/constants.dart';


class ResultsDisplay extends StatelessWidget {
  ResultsDisplay({required this.cfuResult});

  final String cfuResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          
        
            Expanded(
              flex: 5,
              child: Container(
                color: yellowOrange,
             child: Column(
             
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                       SizedBox(
              height: 305,
            ),
                      Text(
                        'CFU (mL)',
                        style: resultTextStyle,
                      ),
                      Text(
                        cfuResult.toString(),
                        style: kCFUTextStyle,
                      ),
                       SizedBox(
              height: 300,
            ),
                      
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            child: Container(
                                child: Center(
                                  child: Text(
                                    'RECALCULATE',
                                    style: kCalculateBottomButtonStyle,
                                  ),
                                ),
                                margin: EdgeInsets.only(top: 10.0),
                                padding: EdgeInsets.only(bottom: 20.0),
                                width: double.infinity,
                                height: 80.0,
                                color: red), 

                                ),
                      ),
                    ]),
              ),
            )
          ]),
    );
  }
}
