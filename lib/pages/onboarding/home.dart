import 'package:car_rent/home_page.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../start_screen.dart';

class InterductionPage extends StatelessWidget {
  const InterductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PreRent',
                style: TextStyle(color: Color(0xffb99e70), fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StartScreen()),
                    );
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ))
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 41, 39, 39),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ImageSlideshow(children: [
          //slider balboard widget
          OnboardSlides(
            image: 'assets/images/slide4.png',
            title: 'Premium\ncar rental',
            sub_title: '\nRent the car of your dreams\nwith home delivery',
          ),
          OnboardSlides(
            image: 'assets/images/slide1.png',
            title: 'All your\nfavourite ',
            sub_title: '\nRent the car of your dreams\nwith home delivery',
          ),
          OnboardSlides(
            image: 'assets/images/slide5.png',
            title: 'The top\nLuxury Car',
            sub_title: '\nRent the car of your dreams\nwith home delivery',
          ),
        ]),
      ),
    );
  }
}

class OnboardSlides extends StatelessWidget {
  final image, title, sub_title;
  const OnboardSlides({
    Key? key,
    this.image,
    this.title,
    this.sub_title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.only(top: 0, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: DelayedDisplay(
                    slidingCurve: Curves.linear,
                    delay: Duration(microseconds: 1000),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DelayedDisplay(
                    slidingCurve: Curves.linear,
                    delay: Duration(microseconds: 2000),
                    child: Text(
                      sub_title,
                      style: TextStyle(color: Colors.white60, fontSize: 19),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: DelayedDisplay(
                slidingCurve: Curves.linear,
                slidingBeginOffset: const Offset(0.100, 0.0),
                delay: Duration(microseconds: 1500),
                child: Image.asset(
                  image,
                  width: 500,
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Center(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // <-- Radius
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
