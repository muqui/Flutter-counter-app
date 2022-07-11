
import 'package:flutter/material.dart';

 class Counterscreen extends StatefulWidget {
  const Counterscreen({Key? key}) : super(key: key);

  @override
  State<Counterscreen> createState() => _CounterscreenState();
}

class _CounterscreenState extends State<Counterscreen> {
  int counter = 15; 
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);
    
    return  Scaffold( 
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body:   Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks', style: fontSize30,),
            Text('$counter', style: fontSize30 ,)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: (){
              counter--;
              setState(() {
                
              });
            },
            
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.exposure_zero),
            onPressed: (){
              counter = 0;
              setState(() {
                
              });
            },
          ),

          const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1),
            onPressed: (){
              counter++;
              setState(() {
                
              });
            },
          ),
        ],
      ),
    );
  }
}

