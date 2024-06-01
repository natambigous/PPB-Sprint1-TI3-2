import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubes_ppb/utils/routes.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                    margin: EdgeInsets.only(bottom: 35),
                    width: size.width,
                    height: size.height * 0.4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/rectangle_1.png'),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(32),
                        bottomLeft: Radius.circular(32),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 23.5, vertical: 10),
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
                    margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
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
                  Spacer(),
                  Container(
                    color: Color(0xFF4F7942),
                    padding: EdgeInsets.symmetric(vertical: 19.6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, rDashboard); // Navigasi ke halaman Dashboard
                          },
                          child: Container(
                            width: 26.7,
                            height: 26.7,
                            child: SvgPicture.asset('assets/vectors/vector_10_x2.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, rHome); // Navigasi ke halaman Home
                          },
                          child: SizedBox(
                            width: 32,
                            height: 28.8,
                            child: SvgPicture.asset('assets/vectors/vector_3_x2.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, rProfile); // Navigasi ke halaman Profile
                          },
                          child: Container(
                            width: 14,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 3),
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                  height: 8,
                                  child: SvgPicture.asset('assets/vectors/vector_11_x2.svg'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 11.4,
              bottom: size.height * 0.4 + 10,
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
