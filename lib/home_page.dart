import 'package:car_rent/widgets/categore.dart';
import 'package:car_rent/widgets/sidebarMenu.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import 'models/cars.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  dynamic _selectedIndex = {};
  List<Color> bg_color = [
    Color.fromARGB(255, 0, 0, 0),
    const Color(0xffE88C30),
    const Color(0xffE8E9EC),
  ];
  List<Color> text_color = [
    const Color(0xffE8E9EC),
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 0, 0, 0),
  ];
  List<Car> car = [
    Car(
      bg_color: Colors.black.toString(),
      type: "Black bugatti\nVeyron",
      image: "assets/images/car1.png",
      speed: "In clock",
      speed_rang: "\$3000",
      price: "Price",
      price_range: "\$3000",
    ),
    Car(
      bg_color: Colors.black.toString(),
      type: "Luxury Cars",
      image: "assets/images/car2.png",
      speed: "In clock",
      speed_rang: "200",
      price: "Price",
      price_range: "\$2000",
    ),
    Car(
      bg_color: Colors.black.toString(),
      type: "Luxury Cars",
      image: "assets/images/car3.png",
      speed: "In clock",
      speed_rang: "\$2500",
      price: "Price",
      price_range: "\$3000",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          right: 8,
          left: 8,
        ),
        child: SliderDrawer(
          appBar: SliderAppBar(
            title: Text(
              'Rent Your Dream Car',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            appBarHeight: MediaQuery.of(context).size.height * 0.1,
            appBarColor: Colors.white,
          ),
          //side bar menu widget start from here
          slider: SidebarMenw(),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: car.length,
                    itemBuilder: ((context, index) {
                      return DelayedDisplay(
                        delay: Duration(seconds: 1),
                        child: AspectRatio(
                          aspectRatio: 3 / 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: bg_color[index],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ) //
                                  ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      children: [
                                        DelayedDisplay(
                                          delay: Duration(seconds: 1),
                                          child: Icon(
                                            Icons.star,
                                            color: Colors.white,
                                          ),
                                        ),
                                        DelayedDisplay(
                                          delay: Duration(seconds: 2),
                                          child: Text(
                                            '4.1',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: DelayedDisplay(
                                          delay: Duration(seconds: 2),
                                          child:
                                              Image.asset(car[index].image!))),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 60, top: 20),
                                    child: DelayedDisplay(
                                      delay: Duration(seconds: 1),
                                      child: Text(
                                        car[index].type!,
                                        style: TextStyle(
                                            color: text_color[index],
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                    child: Row(
                                      children: [
                                        DelayedDisplay(
                                          delay: Duration(seconds: 2),
                                          child: Text(
                                            car[index].price_range!,
                                            style: TextStyle(
                                                color: text_color[index],
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        DelayedDisplay(
                                          delay: Duration(seconds: 3),
                                          child: Text(
                                            '/ Day',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 207, 205, 205),
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height * 0.2 + 40,
                      top: 5,
                      bottom: 10),
                  child: Text('Top Class Cars',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                ),
                Categore() //categore section from outside widget
              ],
            ),
          ),
        ),
      ),
    );
  }
}
