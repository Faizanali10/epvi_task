import 'package:epvi_task/view/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:sprung/sprung.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> with SingleTickerProviderStateMixin{

List<Widget> item=[
  ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.asset(
      width: 100,
      height: 100,
      'assets/images/image1.jpeg',
      fit: BoxFit.fill,
    ),
  ),
  // SizedBox(
  //   width: 10,
  // ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.asset(
      width: 100,
      height: 100,
      'assets/images/image2.jpeg',
      fit: BoxFit.fill,
    ),
  ),
  // SizedBox(
  //   width: 10,
  // ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.asset(
      width: 100,
      height: 100,
      'assets/images/image3.jpeg',
      fit: BoxFit.fill,
    ),
  ),
  // SizedBox(
  //   width: 10,
  // ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.asset(
      width: 100,
      height: 100,
      'assets/images/image4.jpeg',
      fit: BoxFit.fill,
    ),
  ),
  // SizedBox(
  //   width: 10,
  // ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.asset(
      width: 100,
      height: 100,
      'assets/images/image5.jpeg',
      fit: BoxFit.fill,
    ),
  ),
];
bool opened=false;
bool toggle=false;
// late AnimationController controller;
@override
  void initState() {
    // TODO: implement initState
// controller=AnimationController(vsync: this);
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SlidingUpPanel(

            onPanelOpened: (){
              setState(() {
                opened=true;
                toggle=true;
                print(opened);
              });
            },
              onPanelClosed: (){
                setState(() {
                  opened=false;
                  print(opened);
                });
              },
              maxHeight: 700,
      backdropEnabled: true,
      backdropColor: Colors.black26,
      // backdropTapClosesPanel: false,
      // backdropOpacity: 0.8,
      borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
      panelBuilder: (scrollController) {
            return Column(
              children: [
                Icon(Icons.horizontal_rule),
                SizedBox(
                  height: 100,
                  child:
                  ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      SizedBox(height: 10,),
                      AnimatedContainer(
                        curve: Sprung.underDamped,
                        duration: Duration(milliseconds: 750),
                        alignment: toggle ? Alignment.topCenter : Alignment.bottomCenter,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            width: 100,
                            height: 100,
                            'assets/images/image1.jpeg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          width: 100,
                          height: 100,
                          'assets/images/image2.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          width: 100,
                          height: 100,
                          'assets/images/image3.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          width: 100,
                          height: 100,
                          'assets/images/image4.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          width: 100,
                          height: 100,
                          'assets/images/image5.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                    ],
                  ),

                ),
                SizedBox(
                  height: 10,
                ),
                AnimatedContainer(
                  // curve: Sprung.underDamped,
                  duration: Duration(milliseconds: 750),
                  // alignment: toggle ? Alignment.topCenter : Alignment.bottomCenter,
                  width: MediaQuery.sizeOf(context).width*0.9,
                  child: Text('The new version gained Eiffel\'s support: he bought the rights to the patent on the design which Koechlin, Nougier, and Sauvestre had taken out, and the design was put on display at the Exhibition of Decorative Arts in the autumn of 1884 under the company name.',style: TextStyle(color: Colors.grey),),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.9,
                  child: Center(child: Text('READ MORE',style: TextStyle(color: Colors.purple.shade500),)),
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    width: MediaQuery.sizeOf(context).width*0.9,
                    height: 150,
                    'assets/images/image5.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.9,
                  child: Text('Top Sights',style: TextStyle(
                      fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          width: 160,
                          height: 100,
                          'assets/images/image5.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width*0.5,
                            child: Text('Book NOW',style: TextStyle(
                                fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600),),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width*0.5,
                            child: Text('The new version gained Eiffel\'s support: he bought the rights to the patent on the design',style: TextStyle(
                                fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w600),),
                          ),
                        ],
                      ),
                    )
                  ],),
                )
              ],
            );
      },
      body: LandingPage(),
    ),
            opened?Positioned(
              left: MediaQuery.sizeOf(context).width*0.25,
              top: MediaQuery.sizeOf(context).height*0.92,
              child: Hero(
                tag: 'flight',
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.black87,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.flight_takeoff_outlined,color: Colors.white,),
                            Text('Search flight',style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Card(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('On Sale',style: TextStyle(color: Colors.white),),
                        ),color: Colors.green,)
                      ],
                    ),
                  ),
                ),
              ),
            ):Positioned(
                left: MediaQuery.sizeOf(context).width*0.43,
                top: MediaQuery.sizeOf(context).height*0.92,
                child: Hero(
                  tag: 'flight',
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.flight_takeoff_outlined,color:Colors.white,size: 40,),
                  ),color: Colors.black87,),
                )),
          ],
        ));
  }
}
