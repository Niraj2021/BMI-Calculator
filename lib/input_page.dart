import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'bmiBrain.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculatepage.dart';
//here create const type of color which not change during runtime it is work as comiletime.

const activeCardColor=Color(0xFF1D1E33);
const inactiveCardColor=Color(0xFF111328);


class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  int height=180;
  int weight=60;
  int age=19;
  Color maleCardColor=inactiveCardColor;
  Color femaleCardColor=inactiveCardColor;
  //1*=male,2*=female
  void updateColor(int gender)
  {
    if(gender==1)
      {
        if(maleCardColor==inactiveCardColor)
          {
            maleCardColor=activeCardColor;
            femaleCardColor=inactiveCardColor;
          }
        else
          {
            maleCardColor=inactiveCardColor;
          }
      }
      if(gender==2)
      {
        if(femaleCardColor==inactiveCardColor)
          {
            femaleCardColor=activeCardColor;
            maleCardColor=inactiveCardColor;
          }
        else
          {
            femaleCardColor=inactiveCardColor;
          }
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                          setState(() {
                            updateColor(1);
                          });
                      },
                      child: ReusableCard(colour:maleCardColor,
                      childCard:ContentIcon(icon: FontAwesomeIcons.mars,label: "Male",)
                        ),
                    ),
                  ),
                  //SizedBox(width: 10.0,),
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(2);
                        });

                      },
                      child: ReusableCard(colour:femaleCardColor,
                        childCard: ContentIcon(icon: FontAwesomeIcons.venus,label: "Female",),

                      ),
                    ),

                    //here create ReusableCard class which define hole container desin in class so that call the class.
//                    Container(
//
//                      margin: EdgeInsets.all(15.0),
//                     // width: 170.0,
//                     // height: 200.0,
//                      decoration: BoxDecoration(
//                          color: Color(0xFF1D1E33),
//                          borderRadius: BorderRadius.circular(10.0)
//                      ),
//
//                    ),
                  ),

                ],
              ),

            ),
            Expanded(child: Row(
              children: <Widget>[
                Expanded(
                  child:ReusableCard(colour:inactiveCardColor,

                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Text("HUMANS",style: TextStyle(color: Color(0xFF808E98)),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(height.toString(),style: TextStyle(color: Colors.white70,fontSize: 40.0,
                              fontWeight: FontWeight.w900

                            ),),
                            Text("cm",style: TextStyle(color: Color(0xFF808E98),fontSize: 20.0),)
                          ],
                        ),
                        Slider(
                          value:height.toDouble(),
                          min: 120,
                          max: 220,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF808E98),
                          onChanged: (double newvalue){
                            setState(() {
                              //newvalue=height.round().toDouble();
                              height=newvalue.round();
                            });
                          },

                        )
                      ],
                    ),
                  ),


//                  Container(
//
//                    margin: EdgeInsets.all(15.0),
//                    //width: 170.0,
//                    // height: 200.0,
//                    decoration: BoxDecoration(
//                        color: Color(0xFF1D1E33),
//                        borderRadius: BorderRadius.circular(10.0)
//                    ),
//
//                  ),
                ),
              ],
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                   child: ReusableCard(colour:inactiveCardColor,
                   childCard: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Text("WEIGHT",style: TextStyle(color:Color(0xFF808E98)),),
                       Text(weight.toString(),style: TextStyle(color:Colors.white,fontWeight: FontWeight.w800,fontSize: 40.0),),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           FloatingActionButton(
                             heroTag: "btn1",
                             onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                             },
                             child: Icon(FontAwesomeIcons.minus),
                             backgroundColor: Color(0xFFEB1555),
                           ),
                           SizedBox(width: 10.0,),
                           FloatingActionButton(
                             heroTag: "btn2",
                             onPressed: (){
                               setState(() {
                                 weight++;
                               });
                             },
                             child: Icon(FontAwesomeIcons.plus),
                             backgroundColor: Color(0xFFEB1555),
                           )

                         ],
                       )
                     ],
                   ),
                   ),
//                    Container(
//
//                      margin: EdgeInsets.all(15.0),
//                      //width: 170.0,
//                      // height: 200.0,
//                      decoration: BoxDecoration(
//                          color: Color(0xFF1D1E33),
//                          borderRadius: BorderRadius.circular(10.0)
//                      ),
//
//                    ),
                  ),
                  //SizedBox(width: 10.0,),
                  Expanded(
                    child: ReusableCard(colour:inactiveCardColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("AGE",style: TextStyle(color:Color(0xFF808E98)),),
                          Text(age.toString(),style: TextStyle(color:Colors.white,fontWeight: FontWeight.w800,fontSize: 40.0),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                              heroTag: "btn3",
                                onPressed: (){

                                  setState(() {

                                    age--;
                                  });
                                },
                                child: Icon(FontAwesomeIcons.minus),
                                backgroundColor: Color(0xFFEB1555),
                              ),
                              SizedBox(width: 10.0,),
                              FloatingActionButton(
                                heroTag: "btn4",
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(FontAwesomeIcons.plus),
                                backgroundColor: Color(0xFFEB1555),
                              )

                            ],
                          )
                        ],
                      ),
                    ),

//                    Container(
//
//                      margin: EdgeInsets.all(15.0),
//                      // width: 170.0,
//                      // height: 200.0,
//                      decoration: BoxDecoration(
//                          color: Color(0xFF1D1E33),
//                          borderRadius: BorderRadius.circular(10.0)
//                      ),
//
//                    ),
                  ),

                ],
              ),
            ),
            GestureDetector(
              onTap: (){

                BmiBrain bmiBrain=BmiBrain(weight,height);
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return CalculatePage(
                    calculate:bmiBrain.calculateBmi(),
                      getresult: bmiBrain.getResult(),

                    feedback:bmiBrain.getFeedBack(),
                  );
                }));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "CalCulate",
                    style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
                margin: EdgeInsets.only(top: 10.0),
                color: Color(0xFFEB1555),
                width: double.infinity,
                height: 70.0,
              ),
            )
          ],
        )
      ),
    );
  }
}




