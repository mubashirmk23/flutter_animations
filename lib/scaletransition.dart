import 'package:flutter/material.dart';

class ScaletransitionExample extends StatefulWidget {
  @override
  State<ScaletransitionExample> createState() => _ScaletransitionExample();
}

class _ScaletransitionExample extends State<ScaletransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController? _controller;
  late Animation<double>? _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
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
        title: Text('scale transition.dart'),
      ),
      body: Center(
        child: ScaleTransition(
          scale: _animation!,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                'scale me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
