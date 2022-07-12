
import 'package:flutter/material.dart';

 class Counterscreen extends StatefulWidget {
  const Counterscreen({Key? key}) : super(key: key);

  @override
  State<Counterscreen> createState() => _CounterscreenState();
}

class _CounterscreenState extends State<Counterscreen> {
  int counter = 15; 
  void increase(){
    counter++;
    setState(() {  });
  }

   void decrease(){
    counter--;
    setState(() {  });
  }

   void reset(){
    counter = 0;
    setState(() {  });
  }

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
      floatingActionButton:  CustomFloatingActions(
        increaseFn: increase, 
        decreaseFn: decrease, 
        resetFn: reset,

      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

final Function increaseFn;
final Function decreaseFn;
final Function resetFn;
  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn, 
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          child:  const Icon(Icons.exposure_minus_1),
          onPressed: () => decreaseFn(),
          //onPressed: ()=> setState(() => counter--),
          
        ),
         const SizedBox(width: 20),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          onPressed: () => resetFn(),
         // onPressed:  ()=> setState(() => counter = 0),
        ),

         const SizedBox(width: 20),
        FloatingActionButton(
          child:  const Icon(Icons.exposure_plus_1),
          onPressed: () => increaseFn(),
         // onPressed:  ()=> setState(() => counter++),
        ),
      ],
    );
  }
}

