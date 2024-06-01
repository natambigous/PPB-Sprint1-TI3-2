import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubes_ppb/utils/routes.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF2FFF5),
        ),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
                    width: 360,
                    height: 324,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/rectangle_1.png',
                          ),
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(32),
                          bottomLeft: Radius.circular(32),
                        ),
                      ),
                      child: Container(
                        width: 360,
                        height: 324,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(23.5, 0, 23.5, 27),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'ORGANIK',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFF363636),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(18, 0, 18, 141),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Penyelesaian',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color(0xFF363636),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF4F7942),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 19.6, 0, 19.6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, rDashboard); // Navigasi ke halaman Dashboard
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 1.1, 0, 1.1),
                              width: 26.7,
                              height: 26.7,
                              child: SizedBox(
                                width: 26.7,
                                height: 26.7,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_10_x2.svg',
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, rHome); // Navigasi ke halaman Home
                            },
                            child: SizedBox(
                              width: 32,
                              height: 28.8,
                              child: SvgPicture.asset(
                                'assets/vectors/vector_3_x2.svg',
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, rProfile); // Navigasi ke halaman Profile
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 4.4, 0, 5.4),
                              child: SizedBox(
                                width: 14,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(3, 0, 3, 3),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Container(
                                          width: 8,
                                          height: 8,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14,
                                      height: 8,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_11_x2.svg',
                                      ),
                                    ),
                                  ],
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
            Positioned(
              right: 11.4,
              bottom: 277,
              child: SizedBox(
                height: 14,
                child: Text(
                  'Dikategorikan sebagai : ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                    color: Color(0xFF999999),
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
