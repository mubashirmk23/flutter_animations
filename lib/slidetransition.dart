import 'package:flutter/material.dart';
class SlidetransitionExample extends StatefulWidget {
  @override
  State<SlidetransitionExample> createState() => _SlidetransitionExample();
}

class _SlidetransitionExample extends State<SlidetransitionExample>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Offset>? _animation;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<Offset>(
      begin: Offset(3.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(parent: _controller!, curve: Curves.easeInSine));
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
        title: Text('slidetrasitionExample'),
      ),
      body: Center(
        child: SlideTransition(
            position: _animation!,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.black,
              child: Text('slide me'),
            )),
      ),
    );
  }
}
