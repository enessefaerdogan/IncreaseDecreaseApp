import 'package:flutter/material.dart';

class increaseDecreaseApp extends StatefulWidget {
  const increaseDecreaseApp({Key? key}) : super(key: key);

  @override
  State<increaseDecreaseApp> createState() => _increaseDecreaseAppState();
}

class _increaseDecreaseAppState extends State<increaseDecreaseApp> {
   int value = 0;
  

    void _increase() {
     setState(() {
       value =  value + 1;
     });
    }

    void _decrease(){
      setState(() {
        value = value - 1;
      });
    }

    void _reset(){
      setState(() {
        value = 0;
      });
    }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      
      appBar: AppBar(title: Text('Increase-Decrease App'),centerTitle: true,actions: [
        IconButton(onPressed: (){
         _reset();
        }, icon: Icon(Icons.restart_alt))
      ],),
      body: Center(
        child: Column(
                children: [
                  SizedBox(height: 200,),
                  Center(child: Text('$value',style: Theme.of(context).textTheme.headline2,)),
                  SizedBox(height: 50,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Column(
                         children: [
                           ElevatedButton(onPressed: (){
                  _increase();
                  },child: Icon(Icons.add),),
                  Text('Increase')
                         ],
                       ),
                   Column(
                     children: [
                       ElevatedButton(onPressed: (){
                 _decrease();
                 },child: Icon(Icons.remove),),
                 Text('Decrease')
                     ],
                   )
                     ],
                   ),                              
                ],
              ),
      ),      
    );
    
  }
}

