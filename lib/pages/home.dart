import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubes_ppb/utils/routes.dart'; // Pastikan Anda memiliki file routes.dart yang berisi rute yang dibutuhkan

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF2FFF5),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 19, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 19, 34.1),
                width: 321,
                height: 247.9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF363636),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/rectangle_1.png',
                      ),
                    ),
                  ),
                  child: Container(
                    width: 321,
                    height: 247.9,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(32, 0, 32, 170),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, rCamera);
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 29, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF4F7942),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0.9, 10),
                              child: Text(
                                'Kamera',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF4F7942),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0.7, 10),
                          child: Text(
                            'Galeri',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.fromLTRB(2, 0, 0, 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF4F7942),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      width: 212,
                      padding: EdgeInsets.fromLTRB(0, 10, 0.2, 10),
                      child: Text(
                        'Klasifikasi',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
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
                          Navigator.pushNamed(context, rHome);
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 1.1, 0, 1.1),
                          width: 26.7,
                          height: 26.7,
                          child: SizedBox(
                            width: 26.7,
                            height: 26.7,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_1_x2.svg',
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, rCamera);
                        },
                        child: SizedBox(
                          width: 32,
                          height: 28.8,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_13_x2.svg',
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, rProfile);
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
                                    'assets/vectors/vector_6_x2.svg',
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
      ),
    );
  }
}
