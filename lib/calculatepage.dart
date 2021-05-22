import 'package:flutter/material.dart';


class CalculatePage extends StatelessWidget {
  final String getresult;
  final String calculate;
  final String feedback;
  CalculatePage({@required this.getresult,@required this.calculate,@required this.feedback});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",style: TextStyle(color: Colors.white),),

      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text("Your Result",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 40.0),),
             ),
           ),
           Expanded(
             flex: 5,
             child: Container(
               margin: EdgeInsets.only(left: 15.0,right: 15.0),
               width: double.infinity,
               //height: 500.0,
               decoration: BoxDecoration(

                 color: Color(0xFF1D1E33),
                 borderRadius: BorderRadius.circular(20.0),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,


                 children: <Widget>[
                      Text(getresult,style: TextStyle(color: Colors.green,fontSize: 30.0),),
                   Text(calculate,style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.w900)),
                   Text(feedback,textAlign: TextAlign.center,style: TextStyle(

                     color:Colors.white,
                     fontSize: 18.0
                   ),),
                   GestureDetector(
                     onTap: (){
                        Navigator.pop(context);
                     },
                     child: Container(
                       width: double.infinity,
                       height: 80.0,
                       color: Color(0xFFEB1555),
                       child: Center(
                         child: Text("Re-Calculate",textAlign: TextAlign.center,
                             style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold)
                         ),
                       ),
                     ),
                   )
                 ],
               ),
             ),
           )
         ],
        )
      ),
    );
  }
}
