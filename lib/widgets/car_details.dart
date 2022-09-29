import 'package:car_rent/models/details.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  CarDetails({Key? key}) : super(key: key);
  List<Color> bg_color = [
    Color(0xfffceacc),
    const Color(0xffdbe4f1),
    const Color(0xff07070b),
  ];
  List<Color> text_color = [
    const Color(0xff07070b),
    Color.fromARGB(255, 0, 0, 0),
    const Color(0xffE8E9EC),
  ];
  List<Details> car_detials = [
    Details(
      engin: "ENGIN\nOUTPUT",
      speed: "571",
      hp: "hp",
    ),
    Details(
      engin: "HIGHEST\nSPEED",
      speed: "250",
      hp: "km/h",
    ),
    Details(
      engin: "TIME\nTO 100 KM/H",
      speed: "5.2",
      hp: "Sec",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 60,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromARGB(255, 41, 39, 39),
                    Color.fromARGB(255, 41, 39, 39)
                  ]),
            ),
          ),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(31, 105, 102, 102)),
                    color: Color.fromARGB(255, 41, 39, 39),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: IconButton(
                  iconSize: 25,
                  icon: const Icon(
                    Icons.share,
                  ),
                  // the method which is called
                  // when button is pressed
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(31, 105, 102, 102)),
                    color: Color.fromARGB(255, 41, 39, 39),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: IconButton(
                  iconSize: 25,
                  icon: const Icon(
                    Icons.favorite_border,
                  ),
                  // the method which is called
                  // when button is pressed
                  onPressed: () {},
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromARGB(255, 41, 39, 39),
                    Color.fromARGB(255, 0, 0, 0)
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 0),
                      child: DelayedDisplay(
                        slidingCurve: Curves.linear,
                        slidingBeginOffset: const Offset(0.100, 0.0),
                        delay: Duration(microseconds: 2000),
                        child: Container(
                          child: Image.asset('assets/images/car5.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          'PREMUIM CLASS',
                          style: TextStyle(color: Colors.amber),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5 + 5,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Text(
                          ' 4.1',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Rolls-Royce Cullian',
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'A vehicle that makes the dream\nof confortable off-roading a reality',
                      style: TextStyle(color: Colors.white, letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 70,
                    )
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -40),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffEFF0F2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: Text('Features',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return AspectRatio(
                            aspectRatio:
                                MediaQuery.of(context).size.width * 0.004 / 2,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: Icon(Icons.car_crash_sharp),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 5),
                                      child: Text(
                                        car_detials[index].engin!,
                                        style: TextStyle(
                                          color: text_color[index],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            car_detials[index].speed!,
                                            style: TextStyle(
                                                color: text_color[index],
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            car_detials[index].hp!,
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text('\$'),
                            ),
                            Text(
                              '2100',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.bold),
                            ),
                            Text('/day'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Book a car',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.amber,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20), // <-- Radius
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
