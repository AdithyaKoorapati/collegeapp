import 'package:flutter/material.dart';




class AboutCollegeScreen extends StatefulWidget {
  const AboutCollegeScreen({Key? key}) : super(key: key);

  @override
  _AboutCollegeScreenState createState() => _AboutCollegeScreenState();
}

class _AboutCollegeScreenState extends State<AboutCollegeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity/7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Description", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.", style: TextStyle(color: Color(0xff969797), fontSize: 14),),
                  )

                ],
              ),
            ),
          ),

          Container(
            width: double.infinity/7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Location", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage("images/location.png")),
                  ),

                ],
              ),
            ),
          ),

          Container(
            width: double.infinity/7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Student Review", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(image: AssetImage("images/person1.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(image: AssetImage("images/person2.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(image: AssetImage("images/person3.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(image: AssetImage("images/person4.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(height: 50, width: 50, child: Text("+12", style: TextStyle(fontWeight: FontWeight.w800, fontSize:  14, color: Color(0xff0E3C6E)),),color: Color(0xffE7E6E6),),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              width: double.infinity/7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 2,
                    color: Colors.black26
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Arun sai", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus.", style: TextStyle(color: Color(0xff969797), fontSize: 14),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("⭐⭐⭐⭐⭐" , style: TextStyle(fontSize: 14),),
                    )

                  ],
                ),
              ),
            ),
          ),

          SizedBox(
            height: 70,
          )

        ],
      ),
    );
  }
}
