import 'package:flutter/material.dart';
class RotationtransitionExample extends StatefulWidget{
  @override
  State<RotationtransitionExample> createState()=>_RotationtransitionExample();
}
class _RotationtransitionExample extends State<RotationtransitionExample>{
  AnimationController?_controller;
  Animation<double>?_animation;
  @override
  void initState() {
    _controller = AnimationController(duration:Duration(seconds: 2),vsync:this,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rotationtransition Example'),
      ),
      body: Center(
        child: RotationTransition(turns:_animation!,child: Container(
          width: 100,
          height: 100,
         color: Colors.blue,
         child: Center(
          child: Text('Rotate',style: TextStyle(color: Colors.white),),
         ),
        ),),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){

      }),
    );
  }
}