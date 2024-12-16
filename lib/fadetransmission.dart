import 'package:flutter/material.dart';

class FadetransmissionExample extends StatefulWidget {
  @override
  State<FadetransmissionExample> createState() => _FadetransmissionExample();
}

class _FadetransmissionExample extends State<FadetransmissionExample>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? __animation;
  @override
  void initState() {
    // TODO: implement initState
    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    __animation = CurvedAnimation(parent: _controller!, curve: Curves.easeIn);
    _controller!.forward();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade transmission Demo'),
      ),
      body: Center(
        child: FadeTransition(
          opacity: __animation!,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text('Hello Flutter'),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow_outlined),
          onPressed: () {
            if (_controller!.isCompleted) {
              _controller!.reverse();
            } else {
              _controller!.forward();
            }
          }),
    );
  }
}
