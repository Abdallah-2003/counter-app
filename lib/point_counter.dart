import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapps1/cubit/counter_cubit.dart';
import 'package:myapps1/cubit/counter_states.dart';



class PointCounter extends StatelessWidget {
  
  const PointCounter({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
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
                      Text('${BlocProvider.of<CounterCubit>(context).asc}',
                        style: TextStyle(
                          fontSize: 180
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey
                        ),
                        onPressed: (){
                          BlocProvider.of<CounterCubit>(context).counterFunction(
                            team: 'asc', 
                            buttomNum: 1
                          );
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
                          BlocProvider.of<CounterCubit>(context).counterFunction(
                            team: 'asc', 
                            buttomNum: 2
                          );
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
                          BlocProvider.of<CounterCubit>(context).counterFunction(
                            team: 'asc', 
                            buttomNum: 3
                          );
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
                      Text('${BlocProvider.of<CounterCubit>(context).zsc}',
                        style: TextStyle(
                          fontSize: 180
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey
                        ),
                        onPressed: (){
                          BlocProvider.of<CounterCubit>(context).counterFunction(
                            team: 'zsc', 
                            buttomNum: 1
                          );
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
                          BlocProvider.of<CounterCubit>(context).counterFunction(
                            team: 'zsc', 
                            buttomNum: 2
                          );
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
                          BlocProvider.of<CounterCubit>(context).counterFunction(
                            team: 'zsc', 
                            buttomNum: 3
                          );
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
                  BlocProvider.of<CounterCubit>(context).reset();
                },
                child: Text('Reset',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          )
        );
      }, 
      listener: (context, state) {
        
      },
    );     
  }
}