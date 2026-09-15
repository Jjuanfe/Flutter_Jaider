import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Para quitar etiqueta de debug sirve la siguiente linea de código
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        colorSchemeSeed: Colors.red 
        ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('COUNTER SCREEN')) ,
        ),
      body: Center(
        child: Column(
          //ALINEACIÓN VERTICAL DE LA COLUMNA
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('$clickCounter',style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
          Text('Clicks: ',style: TextStyle(fontSize: 25),) 
        ],
        ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed:(){
                clickCounter++;
                setState(() {
                  
                });
              },
              child: Icon(Icons.plus_one),
              ),
            FloatingActionButton(
              onPressed: (){
                clickCounter--;
                setState(() {
              
                });
              },
              child: Icon(Icons.exposure_minus_1_outlined),
          
        )

          ],
        ),
        
        )
    );
  }
}