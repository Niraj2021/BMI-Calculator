import 'package:flutter/material.dart';

class ContentIcon extends StatelessWidget {
//  const ContentIcon({
//    Key key,
//  }) : super(key: key);

  final IconData icon;
  final String label;
  ContentIcon({this.icon,this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Icon(icon,
          size:80.0,
          color: Colors.white70,
        ),
        SizedBox(height: 10.0),
        Text(label,
          style: TextStyle(color: Color(0xFF808E98),fontSize: 18.0),
        )

      ],
    );
  }
}