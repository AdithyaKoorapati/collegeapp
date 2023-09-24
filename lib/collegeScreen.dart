import 'package:collegeapp/tapBarScreen.dart';
import 'package:collegeapp/tapBarScreens/aboutCollegeScreen.dart';
import 'package:collegeapp/tapBarScreens/hostelScreen.dart';
import 'package:flutter/material.dart';



class CollegeScreen extends StatefulWidget {
  const CollegeScreen({Key? key}) : super(key: key);

  @override
  _CollegeScreenState createState() => _CollegeScreenState();
}

class _CollegeScreenState extends State<CollegeScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: ElevatedButton(

            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15, left: 80, right: 80),
              child: Text("Apply Now", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff0E3C6E),
              elevation: 25,
            ),
            onPressed: () {
            //  Navigation
              Navigator.push(context, MaterialPageRoute(builder: (context) => TapBarScreen()));


            },
          ),
          body: Column(
            children: [
                 Container(
                   height: 70,
                   decoration: BoxDecoration(
                     color: Color(0xff0E3C6E)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         GestureDetector(
                           onTap: (){
                               Navigator.pop(context);
                           },
                           child: Container(
                               child: Padding(
                                 padding: const EdgeInsets.all(6.0),
                                 child: Icon(Icons.arrow_back, color: Color(0xff0E3C6E)),
                               ),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Colors.white
                           ),),
                         ),

                         Container(
                           child: Padding(
                             padding: const EdgeInsets.all(6.0),
                             child: Icon(Icons.bookmark_border_outlined, color: Color(0xff0E3C6E)),
                           ),
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Colors.white
                           ),),

                       ],
                     ),
                   ),
                 ),

            //  College Image

              Image(image: AssetImage("images/college.png", )),

              // College Content

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("GHJK Engineering college", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.", style: TextStyle(color: Color(0xff8E8E8E), fontSize: 12),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff27C200),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                        Text("4.3", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),),
                                        Icon(Icons.star, color: Colors.white,)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                        // Tap Bar Flutter

                        TabBar(
                          indicatorColor: Color(0xff0E3C6E),
                          indicatorWeight: 3,
                          tabs: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("About", style: TextStyle(color: Colors.black, fontSize: 14),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Hostel", style: TextStyle(color: Colors.black, fontSize: 14)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Q & A", style: TextStyle(color: Colors.black, fontSize: 14)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Events", style: TextStyle(color: Colors.black, fontSize: 14)),
                            )
                          ],
                        ),

            //  TabbarView

              Flexible(
                child: TabBarView(
                  children: <Widget>[
                    AboutCollegeScreen(),
                    HostelScreen(),
                    AboutCollegeScreen(),
                    AboutCollegeScreen()
                  ],
                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
