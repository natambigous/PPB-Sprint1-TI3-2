import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubes_ppb/utils/routes.dart'; 

class Dashboard extends StatelessWidget {
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
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 286),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF4F7942),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(9, 15, 21, 143),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Ready to save the Earth?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 2, 55.6, 31),
                                  child: Text(
                                    'selamat datang Lumbajawa@gmail.com',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Color(0xFF363636),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      height: 79,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 1.1, 0, 1.1),
                            width: 26.7,
                            height: 26.7,
                            child: SizedBox(
                              width: 26.7,
                              height: 26.7,
                              child: SvgPicture.asset(
                                'assets/vectors/vector_16_x2.svg',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 32,
                            height: 28.8,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_15_x2.svg',
                            ),
                          ),
                          Container(
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
                                      'assets/vectors/vector_x2.svg',
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
            Positioned(
              left: 0,
              right: 0,
              bottom: 68,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: SizedBox(
                  width: 360,
                  height: 392,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                          height: 105,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/download_2.jpeg',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 101,
                              height: 105,
                            ),
                          ),
                        ),
                        Container(
                          height: 105,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/download_2.jpeg',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 101,
                              height: 105,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, rDashboard); // Navigasi ke halaman Dashboard
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home), // Ganti dengan ikon yang sesuai
                    Text('Dashboard'), // Teks untuk tombol
                  ],
                ),
              ),
              GestureDetector(
                onTap: ()
{
                  Navigator.pushNamed(context, rCamera); // Navigasi ke halaman Camera
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.camera), // Ganti dengan ikon yang sesuai
                    Text('Camera'), // Teks untuk tombol
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, rProfile); // Navigasi ke halaman Profile
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.person), // Ganti dengan ikon yang sesuai
                    Text('Profile'), // Teks untuk tombol
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
