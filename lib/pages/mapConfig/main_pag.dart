import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                      target: LatLng(34.543896, 69.160652), zoom: 14),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Color(0xff22262b),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80.0, left: 20),
                          child: Text(
                            'Rolls-Royce Cullinam',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80.0, right: 20),
                          child: Container(
                            height: 25,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'New',
                                style: TextStyle(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(10), // <-- Radius
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2 + 52,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('24-26 Dec, 2022'),
                                Text('24-26 Dec, 2022')
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30.0, left: 30),
                                child: Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 224, 221, 221))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Text(
                                      '416 kabul,Afg shari-now 2222',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black54),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xfffef4e8),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 224, 221, 221))),
                                  child: Icon(Icons.date_range),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xfff4b755),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(20), // <-- Radius
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nasir Ahmad Noori',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Personal discount available'),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: CircleAvatar(
                            radius: (45),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/images/Noori.png"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5 - 20,
            left: 50,
            child: Image.asset(
              "assets/images/car9.png",
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}
