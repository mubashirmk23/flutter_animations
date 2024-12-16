import 'package:flutter/material.dart';

class TweenanimationExample extends StatefulWidget {
  @override
  State<TweenanimationExample> createState() => _TweenanimationExample();
}

class _TweenanimationExample extends State<TweenanimationExample> {
  bool _isLarge = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TweenAnimation builder Example'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 100, end: _isLarge ? 200 : 100),
          duration: Duration(seconds: 1),
          builder: (context, size, child) {
            return Container(
              width: size,
              height: size,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Animate',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _isLarge = !_isLarge;
        });
      }),
    );
  }
}
