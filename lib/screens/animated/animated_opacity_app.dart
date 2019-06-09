import 'package:flutter/material.dart';

class AnimatedOpacityApp extends StatefulWidget {
  final String appBarTitle;

  const AnimatedOpacityApp({Key key, this.appBarTitle}) : super(key: key);

  @override
  _AnimatedOpacityAppState createState() => _AnimatedOpacityAppState();
}

class _AnimatedOpacityAppState extends State<AnimatedOpacityApp> {
  bool _visible =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        tooltip: 'Toggle Opacity',
        onPressed: (){
          setState(() {
           _visible = !_visible; 
          });
        },
      ),
    );
  }
}