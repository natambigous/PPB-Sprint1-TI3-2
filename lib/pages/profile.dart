import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubes_ppb/utils/routes.dart'; 

class Profile extends StatelessWidget {
  void _logout(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pushNamedAndRemoveUntil(context, rLogin, (route) => false);
    } catch (e) {
      print('Error signing out: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF2FFF5),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, rAbout); // Navigasi ke halaman About
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 11, 53),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 11, 0, 12),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/info_24_dp_fill_0_wght_400_grad_0_opsz_2411.png',
                              ),
                            ),
                          ),
                          child: Container(
                            width: 26,
                            height: 26,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFD33232),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _logout(context); // Panggil fungsi logout
                          },
                          child: Container(
                            width: 49,
                            height: 49,
                            padding: EdgeInsets.fromLTRB(9, 8, 8, 9),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: SizedBox(
                                width: 32,
                                height: 32,
                                child: SvgPicture.asset(
                                  'assets/vectors/linear_arrows_action_logout_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(27, 0, 27, 98),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
                            width: 214,
                            height: 214,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(107),
                            ),
                            child: Positioned(
                              right: -4,
                              bottom: -46,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/famous_people_with_kim_jong_uns_hair_1.jpeg',
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 218,
                                  height: 260,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(11.9, 0, 11.9, 56),
                            child: Text(
                              'Samuel L. Jackson',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color(0xFF363636),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Samuel@mail.com',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                decoration: TextDecoration.underline,
                                color: Color(0xFF363636),
                                decorationColor: Color(0xFF363636),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        left: 1,
                        bottom: 27,
                        child: SizedBox(
                          height: 27,
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF7A7A7A),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                          Navigator.pushNamed(context, rHome); // Navigasi ke halaman Home
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 1.1, 0, 1.1),
                          width: 26.7,
                          height: 26.7,
                          child: SizedBox(
                            width: 26.7,
                            height: 26.7,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_8_x2.svg',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 32,
                        height: 28.8,
                        child: SvgPicture.asset(
                          'assets/vectors/vector_9_x2.svg',
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
                                    'assets/vectors/vector_12_x2.svg',
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
