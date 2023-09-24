import 'package:collegeapp/collegeScreen.dart';
import 'package:flutter/material.dart';


class TopColleges extends StatefulWidget {
  const TopColleges({Key? key}) : super(key: key);

  @override
  _TopCollegesState createState() => _TopCollegesState();
}

class _TopCollegesState extends State<TopColleges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Container
          Container(
            height: 150,
            decoration: BoxDecoration(
                color: Color(0xff0E3C6E),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(

                children: [
                  SizedBox(height: 50,),
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


          // College Names

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("MVSH Engineering college ", style: TextStyle(fontSize: 12),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("MVSH Engineering college ", style: TextStyle(fontSize: 12)),
                  ),
                ),
              ),

            ],
          ),

          // Colleges

          Flexible(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CollegeScreen()));
                    },
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        boxShadow: [ BoxShadow(blurRadius: 1, spreadRadius: 2, color: Colors.black26)],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 112,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/ghjk.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.share, size: 18,),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                    ),

                                  ),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.bookmark_border_outlined, size: 18,),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("GHJK Engineering college", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 9),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color(0xff27C200)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                                          child: Text("4.3 ⭐", style: TextStyle(fontSize: 14, color: Colors.white),),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Color(0xff0E3C6E)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                                            child: Text("Apply Now", style: TextStyle(fontSize: 14, color: Colors.white,),
                                          ),
                                        ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Divider(thickness: 2,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image(image: AssetImage("images/like.png")),
                                    Text("More than 1000+ students have been placed", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 9),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("👁️ 468+")
                                  ],
                                ),
                              )
                            ],

                          )
                        ],
                      ),
                    ),
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 260,
                    decoration: BoxDecoration(
                        boxShadow: [ BoxShadow(blurRadius: 1, spreadRadius: 2, color: Colors.black26)],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 112,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ghjk.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.share, size: 18,),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                  ),

                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.bookmark_border_outlined, size: 18,),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                  ),

                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Vaagdevi Engineering college", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 9),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color(0xff27C200)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                                        child: Text("4.3 ⭐", style: TextStyle(fontSize: 14, color: Colors.white),),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Color(0xff0E3C6E)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                                          child: Text("Apply Now", style: TextStyle(fontSize: 14, color: Colors.white,),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Divider(thickness: 2,),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image(image: AssetImage("images/like.png")),
                                  Text("More than 1000+ students have been placed", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 9),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("👁️ 468+")
                                ],
                              ),
                            )
                          ],

                        )
                      ],
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        boxShadow: [ BoxShadow(blurRadius: 1, spreadRadius: 2, color: Colors.black26)],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 112,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/ghjk.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.share, size: 18,),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                  ),

                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.bookmark_border_outlined, size: 18,),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                  ),

                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Bachelor of Technology", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 9),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color(0xff27C200)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                                        child: Text("4.3 ⭐", style: TextStyle(fontSize: 14, color: Colors.white),),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Color(0xff0E3C6E)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                                          child: Text("Apply Now", style: TextStyle(fontSize: 14, color: Colors.white,),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Divider(thickness: 2,),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image(image: AssetImage("images/like.png")),
                                  Text("More than 1000+ students have been placed", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 9),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("👁️ 468+")
                                ],
                              ),
                            )
                          ],

                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )



        ],
      ),
    );
  }
}
