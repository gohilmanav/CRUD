import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:user1/Utils/App_color.dart';
import 'package:user1/ui/Cart/Cart.dart';
import 'package:user1/ui/Refer&earn/Refer_earn.dart';
import 'package:user1/ui/TopPicks2/TopPicks2.dart';
import 'package:user1/ui/category/category.dart';
import 'package:user1/ui/combos2/Combos2.dart';
import 'package:user1/models/main_category_model.dart';
import 'package:user1/models/spacials_combos_model.dart';
import 'package:user1/models/top_picks_model.dart';
import 'package:user1/ui/loginpage/login_page.dart';
import 'package:user1/ui/notification/Notification.dart';
import 'package:sticky_float_button/sticky_float_button.dart';

import 'package:user1/ui/profile/profile.dart';
import 'package:user1/wights/main_category_wight.dart';
import 'package:user1/wights/spacials_combos_wight.dart';
import 'package:user1/wights/top_picks_wight.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final List<String> imgList = [
    'https://cdn.pixabay.com/photo/2017/06/07/10/53/pizza-2380025_960_720.jpg',
    'https://images.pexels.com/photos/1292294/pexels-photo-1292294.jpeg',
    'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/01/22/19/12/pizza-2000595_960_720.jpg',
    'https://cdn.pixabay.com/photo/2021/09/02/13/36/pizza-6593504_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/04/03/13/29/pizza-705061_960_720.jpg'
  ];
  int page = 0;
  List<SpacialsCombosModel> SpacialComboList = [
    SpacialsCombosModel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "Spacial Pizza's",
        price: "15455.00"),
    SpacialsCombosModel(
        id: "2",
        imageUrl: "assets/pizza2.jpeg",
        description: "Spacial Pizza's",
        price: "1515.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/pizza3.jpeg",
        description: "Spacial Pizza's",
        price: "1105.00"),
    SpacialsCombosModel(
        id: "4",
        imageUrl: "assets/pizza4.jpeg",
        description: "Spacial Pizza's",
        price: "105.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/pizza5.jpeg",
        description: "Spacial Pizza's",
        price: "1105.00"),
    SpacialsCombosModel(
        id: "4",
        imageUrl: "assets/pizza1.jpeg",
        description: "Spacial Pizza's",
        price: "105.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/pizza2.jpeg",
        description: "Spacial Pizza's",
        price: "1105.00"),
    SpacialsCombosModel(
        id: "4",
        imageUrl: "assets/pizza3.jpeg",
        description: "Spacial Pizza's",
        price: "105.00"),
    SpacialsCombosModel(
        id: "2",
        imageUrl: "assets/pizza4.jpeg",
        description: "Spacial Pizza's",
        price: "1515.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/pizza5.jpeg",
        description: "Spacial Pizza's",
        price: "1105.00"),
    SpacialsCombosModel(
        id: "4",
        imageUrl: "assets/pizza1.jpeg",
        description: "Spacial Pizza's",
        price: "105.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/pizza2.jpeg",
        description: "Spacial Pizza's",
        price: "1105.00"),
    SpacialsCombosModel(
        id: "4",
        imageUrl: "assets/pizza3.jpeg",
        description: "Spacial Pizza's",
        price: "105.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/pizza4.jpeg",
        description: "Spacial Pizza's",
        price: "1105.00"),
    SpacialsCombosModel(
        id: "4",
        imageUrl: "assets/pizza5.jpeg",
        description: "Spacial Pizza's",
        price: "105.00"),
    SpacialsCombosModel(
        id: "2",
        imageUrl: "assets/pizza1.jpeg",
        description: "Spacial Pizza's",
        price: "1515.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/pizza2.jpeg",
        description: "Spacial Pizza's",
        price: "1105.00"),
    SpacialsCombosModel(
        id: "4",
        imageUrl: "assets/pizza3.jpeg",
        description: "Spacial Pizza's",
        price: "105.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/pizza4.jpeg",
        description: "Spacial Pizza's",
        price: "1105.00"),
    SpacialsCombosModel(
        id: "4",
        imageUrl: "assets/pizza5.jpeg",
        description: "Spacial Pizza's",
        price: "105.00"),
  ];
  List<toppicksmodel> top_picks_list = [
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/pizza1.jpeg",
        description: "toppicks pizza's",
        price: "100"),
  ];
  List<Maincategorymodel> Main_castegory_list = [
    Maincategorymodel(
        id: "1",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "2",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "3",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "4",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "5",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "6",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "1",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "2",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "3",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "4",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "5",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "6",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "1",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "2",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "3",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "4",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "5",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "6",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "6",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "6",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
    Maincategorymodel(
        id: "6",
        description: "Main",
        imageUrl: "assets/pizza1.jpeg",
        price: "100"),
  ];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      imgList.forEach((imageUrl) {
        precacheImage(AssetImage(imageUrl), context);
      });
    });
    super.initState();
  }
// int Myindex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   // ignore: unused_field
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1:Refer&earn',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: Profile',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       Myindex = index;
//     });
//   }
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage("assets/home_new.png"),
      //         color: AppColor.TheamColor,
      //       ),
      //       label: 'Home'
      //     ),
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage("assets/ic_refer_earn.png"),
      //         color: AppColor.TheamColor,
      //       ),
      //       label: 'Refer&earn',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage("assets/ic_profile.png"),
      //         color: AppColor.TheamColor,
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      //    currentIndex: Myindex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),

      backgroundColor: AppColor.WhiteColor,
      key: _key,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.WhiteColor,
        actions: [
          Stack(
            children: [
              Align(alignment: Alignment.bottomLeft,
                child: GestureDetector(
                    onTap: () {
                      _key.currentState?.openDrawer();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/ic_menu.png',
                          height: 40,
                        ),
                      ),
                    )),
              ),
              Center(
                child: Column(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0,top: 5),
                      child: Container(width: 200,height:25 ,color:AppColor.WhiteColor ,
                        child: Center(
                          child: Text(
                            'Delivery Address',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                   
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Container(
                        height: 26,
                        width: 200,color: AppColor.WhiteColor,
                        child: Marquee(
                          text: 'hy manav add address hear ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize:12,color: AppColor.BlackColor),
                          scrollAxis: Axis.horizontal, //scroll direction
                          crossAxisAlignment: CrossAxisAlignment.start,
                          blankSpace: 20.0,
                          velocity: 50.0, //speed
                          pauseAfterRound: Duration(seconds: 1),
                          startPadding: 10.0,
                          accelerationDuration: Duration(seconds: 1),
                          accelerationCurve: Curves.linear,
                          decelerationDuration: Duration(milliseconds: 500),
                          decelerationCurve: Curves.easeOut,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 300),
                        child: Image.asset(
                          'assets/ic_my_cart.png',
                          height: 40,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      //  bottomNavigationBar: BottomNavigationBar(items:const<BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ), ]),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 25,
                  ),
                  child: CarouselSlider.builder(
                    itemCount: imgList.length,
                    options: CarouselOptions(
                      height: 250,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      return Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0)),
                                child: Image.network(imgList[index],
                                    fit: BoxFit.fill, width: 1000)),
                          ]));
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.map((url) {
                    int index = imgList.indexOf(url);
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        width: 13,
                        height: 13,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.TheamColor),
                          shape: BoxShape.circle,
                          color: page == index
                              ? AppColor.WhiteColor
                              : AppColor.TheamColor,
                        ),

                        //           child: GestureDetector(child: Image.asset(url, fit: BoxFit.fill),
                        // onTap: () {
                        //   Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (BuildContext context) => ()),
                        //   );
                        // },),
                      ),
                    );
                  }).toList(),
                ),
                Row(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25, bottom: 7, top: 7),
                          child: Text(
                            "Specials / Combos",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Combos2()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Text(
                          'View all',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.deepOrange,
                              decoration: TextDecoration.underline),
                          // textAlign: TextAlign.left,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 170,
                  width: 320,
                  child: ListView.separated(
                    // physics: AlwaysScrollableScrollPhysics(
                    // ),
                    scrollDirection: Axis.horizontal,
                    itemCount: SpacialComboList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //                           context,
                          //                           MaterialPageRoute(
                          //                               builder: (context) =>
                          //                                   ()),
                          //                         );
                          // },
                          child: SpacialsCombosWight(
                              spacial: SpacialComboList[index]));
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, bottom: 7, top: 7),
                        child: Container(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Top Picks",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TopPicks2()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 160),
                          child: Text(
                            'View all',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.deepOrangeAccent,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: 320,
                  child: ListView.separated(
                    // physics: AlwaysScrollableScrollPhysics(
                    // ),
                    scrollDirection: Axis.horizontal,
                    itemCount: SpacialComboList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //                         context,
                            //                         MaterialPageRoute(
                            //                             builder: (context) =>
                            //                                 SpecialsCombosScreen()),
                            //                       );
                          },
                          child: TopPicksWight(top: top_picks_list[index]));
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
                Container(
                  child: Row(children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, bottom: 7, top: 7),
                      child: Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Main Category",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Category()),
                        );
                      },
                      child: Padding(
                          padding: const EdgeInsets.only(left: 125),
                          child: Text(
                            'View all',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.deepOrangeAccent,
                                decoration: TextDecoration.underline),
                          )),
                    )
                  ]),
                ),
                Container(
                  height: 170,
                  width: 320,
                  child: ListView.separated(
                    // physics: AlwaysScrollableScrollPhysics(
                    // ),
                    scrollDirection: Axis.horizontal,
                    itemCount: SpacialComboList.length,
                    itemBuilder: (context, index) {
                      return Maincategoryewightlist(
                          Main: Main_castegory_list[index]);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
              ],
            ),
          ))
        ],
      )),
      drawer: Container(
        child: Drawer(
          child: ListView(children: [
            Container(
                height: 120,
                //width:80,
                //margin: EdgeInsets.only(right: 20),
                child: DrawerHeader(
                  child: Row(
                    children: [
                      Container(
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(top: 0, left: 10),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(
                              'assets/ic_profile.png',
                            ),
                            backgroundColor: AppColor.WhiteColor,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, right: 40),
                                child: Container(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Gohil Manav",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 2, right: 30),
                              //   child: Container(
                              //     child: Align(
                              //       alignment: Alignment.centerLeft,
                              //       child: Text(
                              //         "Manav@gmail.com",
                              //         style: TextStyle(color: AppColor.TextColor),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_terms_condition.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "Select Branch",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => notification()),
                );
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_notification.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "Notification",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myprofile()),
                );
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_profile.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "My profile",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_delivery_location.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "My Address",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_order_history.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "My Orders",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_table_reservation.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "Table Reservation",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_table_reservation.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "My Reservation",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_img_unfav.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "My Favorites",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_gift_card.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "Gift Cards",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Refer_earn()),
                );
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_refer_earn.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'Refer and Earn',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_reward.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'Reward/Loyalty Points',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_restaurant_feedback.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'Restaurant Feedback',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_about_us.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'About Us',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_terms_condition.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'Terms&Conditions',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_help_support.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'Help & Support',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_setting.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'settings',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: StickyFloatButton(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.TheamColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: AppColor.WhiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //  FloatingActionButton(onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => LoginPage()),
            //       );
            //  },
            //  child:Padding(
            //    padding: const EdgeInsets.only(left: 18.0,right: 18),
            //    child: Container(decoration: BoxDecoration(
            //     color: AppColor.TheamColor,
            //     borderRadius: BorderRadius.circular(10)
            //    ),
            //    child: Align(alignment: Alignment.center,child: Text("Log In",style: TextStyle(color: AppColor.WhiteColor),),),),
            //  ) ,),
            // Align(
            //   alignment: Alignment.center,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 20, right: 20),
            //     child:
            //      GestureDetector(
            //       // onTap: () {
            //       //   Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //         builder: (context) => const LoginPage()),
            //       //   );
            //       // },
            //       child: Padding(
            //         padding: const EdgeInsets.only(left: 5, right: 5),
            //         child: Container(
            //           height: 42,
            //           decoration: BoxDecoration(
            //               color: Colors.deepOrange,
            //               borderRadius: BorderRadius.circular(20)),
            //           child: Align(
            //               alignment: Alignment.center,
            //               child: Text(
            //                 'Log Out',
            //                 style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     color: AppColor.WhiteColor,
            //                     fontSize: 20),
            //               )),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}
