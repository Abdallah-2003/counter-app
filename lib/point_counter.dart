import 'package:flutter/material.dart';

class PointCounter extends StatefulWidget{

  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int ascPoints = 0;

  int zscPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Point Counter',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        
        body: Column(
          children: [
            Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('ASC',
                      style: TextStyle(
                        fontSize: 40
                      ),
                    ),
                    Text('$ascPoints',
                      style: TextStyle(
                        fontSize: 180
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                      ),
                      onPressed: (){
                        setState(() {
                          ascPoints++;
                        });
                      }, 
                      child: Text('Add 1 Point',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                      ),
                      onPressed: (){
                        setState(() {
                          ascPoints += 2;
                        });
                      }, 
                      child: Text('Add 2 Point',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                      ),
                      onPressed: (){
                        setState(() {
                          ascPoints += 3;
                        });
                      }, 
                      child: Text('Add 3 Point',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                   
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text('ZSC',
                      style: TextStyle(
                        fontSize: 40
                      ),
                    ),
                    Text('$zscPoints',
                      style: TextStyle(
                        fontSize: 180
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                      ),
                      onPressed: (){
                        setState(() {
                          zscPoints++;
                        });
                      }, 
                      child: Text('Add 1 Point',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                      ),
                      onPressed: (){
                        setState(() {
                          zscPoints += 2;
                        });
                      }, 
                      child: Text('Add 2 Point',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                      ),
                      onPressed: (){
                        setState(() {
                          zscPoints += 3;
                        });
                      }, 
                      child: Text('Add 3 Point',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                   
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey
              ),
              onPressed: (){
                setState(() {
                  ascPoints = zscPoints = 0;
                });
              },
              child: Text('Reset',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            Spacer(flex: 1),
          ],
          
        ),
        
      ),
    );
  }
}