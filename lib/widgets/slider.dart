import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final String image, title;

  const SliderWidget({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Color.fromARGB(255, 206, 123, 15),
              ),
              Text(
                ' 4.1',
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 145, 37),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6 + 30,
              ),
              Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 66, 66, 64),
              ),
            ],
          ),
        ),
        DelayedDisplay(
            delay: Duration(microseconds: 2000), child: Image.asset(image)),
        Container(
          margin: EdgeInsets.only(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 65,
                ),
                Container(
                  height: 25,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'New',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // <-- Radius
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: Color.fromARGB(255, 42, 41, 41),
          height: 1,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '571hp',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '5.5 sec',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '3500\$',
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
