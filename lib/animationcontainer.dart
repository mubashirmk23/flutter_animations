import 'package:flutter/material.dart';

class Animationcontainer extends StatefulWidget {
  @override
  State<Animationcontainer> createState() => _Animationcontainer();
}

class _Animationcontainer extends State<Animationcontainer> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  void _animatedContainer() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.blue ? Colors.black : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation container Example'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: _color,
          duration: Duration(seconds: 2),
          curve: Curves.easeInExpo,
          child: GestureDetector(
            onTap: _animatedContainer,
            child: FlutterLogo(
              size: 75,
            ),
          ),
        ),
      ),
    );
  }
}
