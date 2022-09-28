import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SidebarMenw extends StatelessWidget {
  const SidebarMenw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          DelayedDisplay(
            delay: Duration(microseconds: 2000),
            child: Padding(
              padding: const EdgeInsets.only(top: 50, right: 30),
              child: CircleAvatar(
                  radius: (45),
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset("assets/images/Noori.png"),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 5),
            child: Text(
              'Nasir Ahmad Noori',
              style: TextStyle(fontSize: 19),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DelayedDisplay(
            delay: Duration(microseconds: 2000),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Divider(
                color: Color.fromARGB(255, 180, 174, 174),
                height: 1,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          DelayedDisplay(
            delay: Duration(microseconds: 800),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.portable_wifi_off_outlined,
                    color: Color.fromARGB(255, 23, 20, 12),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    ' Profile',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(microseconds: 1000),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 23, 20, 12),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Setting',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(microseconds: 1300),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.category,
                    color: Color.fromARGB(255, 23, 20, 12),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    ' Category',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(microseconds: 1700),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.car_crash,
                    color: Color.fromARGB(255, 23, 20, 12),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Top Class',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(microseconds: 2000),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 23, 20, 12),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    ' Home',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
