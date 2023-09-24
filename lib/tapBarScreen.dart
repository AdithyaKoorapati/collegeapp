import 'package:collegeapp/bottomNavigationScreens/searchScreen.dart';
import 'package:collegeapp/tapBarScreens/aboutCollegeScreen.dart';
import 'package:flutter/material.dart';
import 'package:collegeapp/tapBarScreens/hostelScreen.dart';


class TapBarScreen extends StatefulWidget {
  const TapBarScreen({Key? key}) : super(key: key);

  @override
  _TapBarScreenState createState() => _TapBarScreenState();
}

class _TapBarScreenState extends State<TapBarScreen> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));


            },
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                color: Color(0xff0E3C6E),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 35, bottom: 20),
                  child: Text("GHJK Engineering college", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 20),),
                ),
              ),

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
