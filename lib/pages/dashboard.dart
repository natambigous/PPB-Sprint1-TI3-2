import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubes_ppb/utils/routes.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF2FFF5),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Color(0xFF4F7942),
                  padding: EdgeInsets.fromLTRB(9, 15, 21, 143),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ready to save the Earth?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(height: 11),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Selamat datang Lumbajawa@gmail.com',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(0xFF363636),
                              ),
                            ),
                          ),
                          Container(
                            height: 79,
                            width: 79,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 18),
                      _buildImageBox(context),
                      SizedBox(height: 18),
                      _buildImageBox(context),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF4F7942),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/vectors/vector_16_x2.svg',
              width: 26.7,
              height: 26.7,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/vectors/vector_15_x2.svg',
              width: 32,
              height: 28.8,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/vectors/vector_x2.svg',
              width: 26.7,
              height: 26.7,
            ),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, rDashboard);
              break;
            case 1:
              Navigator.pushNamed(context, rHome);
              break;
            case 2:
              Navigator.pushNamed(context, rProfile);
              break;
          }
        },
      ),
    );
  }

  Widget _buildImageBox(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF000000)),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/download_2.jpeg'),
        ),
      ),
    );
  }
}
