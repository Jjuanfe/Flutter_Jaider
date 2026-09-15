import 'package:flutter/material.dart';


class CounterFunctionScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    //el return es para crer el widget tipo MaterialApp
    return MaterialApp(
      //Para quitar etiqueta de debug sirve la siguiente linea de código
      debugShowCheckedModeBanner: false,
      //Dejando True a Material 3 cambia el diseño, también colores 
      theme: ThemeData(
        useMaterial3: false,
        colorSchemeSeed: Colors.orange 
        ),
        //DENTRO DE ESTE HOME ESTÁ EL SCAFFOLD WIDGET QUE AYUDA CON LA UBICACIÓN DEL LAS COSAS
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Counter Screen')) ,
          actions: [
          IconButton(
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            },
            icon: Icon(Icons.refresh_outlined)),
          ]
        ),
        //LA COLUMNA ES UN SOLO WIDGET SE LE PUEDE DAR ESTILO, CENTRARLA ETC, SI RECIBE UN HIJO SOLO SE DEJA CHILD SI NO, SE CAMBIA A CHILDREN
      body: Center(
        child: Column(
          //ALINEACIÓN VERTICAL DE LA COLUMNA
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('$clickCounter',style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
          Text('Click${clickCounter==1?'':'s'}', style: TextStyle(fontSize: 25))
          ],
          ),
        ),
        //DENTRO DEL SCAFFOLD HAY LA OPCIÓN DE FLOATING ACTION BUTTON
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon:Icons.plus_one,
              onPressed: (){
                clickCounter ++;
                setState(() {});  
              }
            ),
            CustomButton(
              icon:Icons.exposure_minus_1_outlined,
              onPressed: () {
                if(clickCounter == 0) return;
                clickCounter --;
                setState(() {});
              },
              ),
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            ),
          ],
          
        ),
        )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  //con el ? se vuelve opcional puede o no venir
  final VoidCallback? onPressed;

  const new({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: StadiumBorder(),
      elevation: 5,
      enableFeedback: true,
      onPressed: onPressed,
      child: Icon(icon),
      );
  }
}