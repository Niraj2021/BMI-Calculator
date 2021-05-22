import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {

  // here do not need by constructor so put comment.
//  const ReusableCard({
//    Key key,
//  }) : super(key: key);

  final Color colour;
  //here i am create own property name is childCard which is used in Reusable class or widget as treat like child propert.
  final Widget childCard;
//   ReusableCard({@required Color clr})
//   {
//     colour=clr;
//   }
//
  ReusableCard({@required this.colour,this.childCard});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      //width: 170.0,
      // height: 200.0,
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0)
      ),

    );
  }
}