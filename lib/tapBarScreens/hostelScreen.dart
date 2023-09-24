import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HostelScreen extends StatefulWidget {
  const HostelScreen({Key? key}) : super(key: key);

  @override
  _HostelScreenState createState() => _HostelScreenState();
}

class _HostelScreenState extends State<HostelScreen> {

  PageController _pageController = PageController(viewportFraction: 0.4);
  int _currentIndex = 0;

  List<String> _imageUrls = [
    "https://img.freepik.com/free-photo/white-bedroom-hotel_1150-12633.jpg?w=1060&t=st=1695540161~exp=1695540761~hmac=ecf6fe1c4454810e6e82b1e58387eeac381cd3315a0a96611f454b3e66993983",

    "https://img.freepik.com/free-photo/young-friends-hostel_52683-121734.jpg?w=996&t=st=1695540343~exp=1695540943~hmac=9da756ff8012b4df8c0f85419fbcd0032edf22114c2fabffa4f01ddf91ea0e89",
    "https://img.freepik.com/free-photo/white-bedroom-hotel_1150-12633.jpg?w=1060&t=st=1695540161~exp=1695540761~hmac=ecf6fe1c4454810e6e82b1e58387eeac381cd3315a0a96611f454b3e66993983",
    "https://img.freepik.com/free-photo/young-friends-hostel_52683-121734.jpg?w=996&t=st=1695540343~exp=1695540943~hmac=9da756ff8012b4df8c0f85419fbcd0032edf22114c2fabffa4f01ddf91ea0e89",
    "https://img.freepik.com/free-photo/white-bedroom-hotel_1150-12633.jpg?w=1060&t=st=1695540161~exp=1695540761~hmac=ecf6fe1c4454810e6e82b1e58387eeac381cd3315a0a96611f454b3e66993983",
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0E3C6E)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage("images/bed.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("4", style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff0E3C6E))
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage("images/bed_black.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("3", style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff0E3C6E))
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage("images/bed_black.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("2", style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff0E3C6E))
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage("images/bed_black.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("1", style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 15,),


          SizedBox(
            height: 150, // Adjust the height of the image slider as needed

            child: PageView.builder(
              controller: _pageController,
              itemCount: _imageUrls.length,

              onPageChanged: _onPageChanged,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    _imageUrls[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),


          Container(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("GHJK Engineering Hostel", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff27C200)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("4.3 ⭐", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800, color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                             Image(image: AssetImage("images/locationicon.png")),
                             Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: Text("Lorem ipsum dolor sit amet, consectetur", style: TextStyle(fontSize: 12, color: Color(0xff4A4A4A)),),
                             )
                      ],
                    ),
                  ),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.", style: TextStyle(fontSize: 14,color: Color(0xff969797)),)
                ],
              ),
            ),
          ),

           Container(
             child: Padding(
               padding: const EdgeInsets.all(15),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Facilities", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                   Padding(
                     padding: const EdgeInsets.only(top: 8),
                     child: Row(
                       children: [
                         Image(image: AssetImage("images/collegeicon.png")),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("College in 400mtrs", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xff4A4A4A)),),
                         )
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 8),
                     child: Row(
                       children: [
                         Image(image: AssetImage("images/bathroomicon.png")),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Bathrooms : 2", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xff4A4A4A)),),
                         )
                       ],
                     ),
                   )
                 ],
               ),
             ),
           ),

          SizedBox(height: 100,)


        ],
      ),
    );
  }


        List<Widget> _buildPageIndicator() {
          List<Widget> indicators = [];
          for (int i = 0; i < _imageUrls.length; i++) {
            indicators.add(
              Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == i ? Colors.black : Colors.grey,
                ),
              ),
            );
          }
          return indicators;
        }
}
