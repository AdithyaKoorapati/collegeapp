import 'package:collegeapp/topColleges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  String college = " ";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xff0E3C6E),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(

                children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("Find your own way",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.w800,


                             ),),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("Search in 600 colleges around!",
                             style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w700,
                               color: Colors.white
                              ),
                               ),
                           )
                         ],
                       ),
                       Stack(
                           children: <Widget>[
                             new Icon(Icons.notifications, color: Colors.white,),
                             new Positioned(  // draw a red marble
                               top: 0.0,
                               right: 0.0,
                               child: new Icon(Icons.brightness_1, size: 8.0,
                                   color: Colors.redAccent),
                             )
                           ]
                       ),
                     ],
                   ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextField(

                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff0E3C6E)),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(8),
                            prefixIcon: Icon(Icons.search, color: Colors.black26, size: 18,),
                            filled: true,
                            hintText: 'Search for colleges, schools.....',
                          ),
                      ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.mic
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          Flexible(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: (){
                     bottomSheet();
                  },
                  child: UnconstrainedBox(
                    child: Stack(
                      children: [
                        Container(
                          height: 158,
                          width: 325,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/college1.png"),
                              fit: BoxFit.fitWidth,
                            ),

                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text("Top Colleges", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  width: 200,
                                  child: Text("Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.",
                                       maxLines: 3,

                                    style: TextStyle(
                                         color: Colors.white,
                                         fontWeight: FontWeight.w700,
                                         fontSize: 12

                                       ),),
                                ),
                              )

                            ],
                          ),
                        ),
                        const Positioned(
                          bottom: 10,
                          right: 2,

                            child: Text("+126 Colleges", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 10),)
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20,),


                UnconstrainedBox(
                  child: Stack(
                    children: [
                      Container(
                        height: 158,
                        width: 325,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/college1.png"),
                            fit: BoxFit.fitWidth,
                          ),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text("Top Schools", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                width: 200,
                                child: Text("Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
                                  maxLines: 3,

                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12

                                  ),),
                              ),
                            )

                          ],
                        ),
                      ),
                      const Positioned(
                          bottom: 10,
                          right: 2,

                          child: Text("+106 Schools", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 10),))
                    ],
                  ),
                ),


                SizedBox(height: 20,),


                UnconstrainedBox(
                  child: Stack(
                    children: [
                      Container(
                        height: 158,
                        width: 325,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/college1.png"),
                            fit: BoxFit.fitWidth,
                          ),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text("Exams", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                width: 200,
                                child: Text("Find an end to end information about the exams that are happening in India",
                                  maxLines: 3,

                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12

                                  ),),
                              ),
                            )

                          ],
                        ),
                      ),
                      const Positioned(
                          bottom: 10,
                          right: 2,

                          child: Text("+16 Exams", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 10),)
                      )
                    ],
                  ),
                ),

                SizedBox(height: 20,)

              ],
            ),
          )
        ],
      ),
    );
  }

      void bottomSheet(){

        showModalBottomSheet<void>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
          ),
          context: context,
          builder: (BuildContext context) {
            return Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sort by", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18, color: Colors.black),),
                        GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Divider(thickness: 1,),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage("images/education.png")),
                              ),
                              Text("Bachelor of Technology", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                            ],
                          ),
                        ),
                      ),
                      Radio(
                        value: "BachelorofTechnology",
                        groupValue: college,
                        onChanged: (value){
                          setState(() {
                            college = value.toString();
                            bottomSheet();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TopColleges()));
                          });
                        },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage("images/sketch.png")),
                              ),
                              Text("Bachelor of Architecture", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                            ],
                          ),
                        ),
                      ),
                      Radio(
                        value: "BachelorofArchitecture",
                        groupValue: college,
                        onChanged: (value){
                          setState(() {
                            college = value.toString();
                            bottomSheet();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TopColleges()));
                          });
                        },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage("images/pharmacy.png")),
                              ),
                              Text("Pharmacy", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                            ],
                          ),
                        ),
                      ),
                      Radio(
                        value: "Pharmacy",
                        groupValue: college,
                        onChanged: (value){
                          setState(() {
                            college = value.toString();
                            bottomSheet();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TopColleges()));
                          });
                        },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage("images/balance.png")),
                              ),
                              Text("Law", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                            ],
                          ),
                        ),
                      ),
                      Radio(
                        value: "Law",
                        groupValue: college,
                        onChanged: (value){
                          setState(() {
                            college = value.toString();
                            bottomSheet();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TopColleges()));
                          });
                        },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage("images/management.png")),
                              ),
                              Text("Management", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                            ],
                          ),
                        ),
                      ),
                      Radio(
                        value: "Management",
                        groupValue: college,
                        onChanged: (value){
                          setState(() {
                            college = value.toString();
                            bottomSheet();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TopColleges()));
                          });
                        },
                      ),
                    ],
                  )

                ],
              ),
            );

          },
        );
      }
}
