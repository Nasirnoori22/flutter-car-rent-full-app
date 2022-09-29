import 'package:animations/animations.dart';
import 'package:car_rent/widgets/slider.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'car_details.dart';

class Categore extends StatelessWidget {
  Categore({Key? key}) : super(key: key);
  List<Color> car_color = [
    Color.fromARGB(255, 0, 0, 0),
    const Color(0xffE88C30),
    const Color(0xffE8E9EC),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromARGB(255, 41, 39, 39),
                        Color.fromARGB(255, 0, 0, 0)
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: MediaQuery.of(context).size.height * 0.4 + 20,
                width: MediaQuery.of(context).size.width,
                child: ImageSlideshow(children: [
                  //slider balboard widget
                  OpenContainer(
                      closedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      closedColor: Color(0xff201d2b),
                      openColor: Color(0xff201d2b),
                      transitionDuration: const Duration(milliseconds: 500),
                      transitionType: ContainerTransitionType.fadeThrough,
                      closedBuilder: ((context, action) {
                        return DelayedDisplay(
                          delay: Duration(microseconds: 2000),
                          child: SliderWidget(
                            image: 'assets/images/car1.png',
                            title: 'Rolls-Royce Cullinan',
                          ),
                        );
                      }),
                      openBuilder: (context, action) {
                        return CarDetails();
                      }),

                  DelayedDisplay(
                    delay: Duration(microseconds: 2000),
                    child: SliderWidget(
                      image: 'assets/images/car2.png',
                      title: 'Rolls-Royce Dawn',
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(microseconds: 3000),
                    child: SliderWidget(
                      image: 'assets/images/car3.png',
                      title: 'Mercedes-AMG S65',
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ));
  }
}
