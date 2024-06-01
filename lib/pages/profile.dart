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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF2FFF5),
        ),
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, rAbout); // Navigasi ke halaman About
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 11, bottom: 12),
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/info_24_dp_fill_0_wght_400_grad_0_opsz_2411.png'),
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
                          padding: EdgeInsets.all(8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: SvgPicture.asset('assets/vectors/linear_arrows_action_logout_x2.svg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 27, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width * 0.6,
                          height: size.width * 0.6,
                          margin: EdgeInsets.only(bottom: 29),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(size.width * 0.3),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/famous_people_with_kim_jong_uns_hair_1.jpeg'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'Samuel L. Jackson',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color(0xFF363636),
                            ),
                          ),
                        ),
                        Text(
                          'Samuel@mail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                            color: Color(0xFF363636),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 56),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xFF7A7A7A),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              color: Color(0xFF4F7942),
              padding: EdgeInsets.symmetric(vertical: 19.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, rHome); // Navigasi ke halaman Home
                    },
                    child: Container(
                      width: 26.7,
                      height: 26.7,
                      child: SvgPicture.asset('assets/vectors/vector_8_x2.svg'),
                    ),
                  ),
                  Container(
                    width: 32,
                    height: 28.8,
                    child: SvgPicture.asset('assets/vectors/vector_9_x2.svg'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, rProfile); // Navigasi ke halaman Profile
                    },
                    child: Container(
                      width: 14,
                      child: Column(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            margin: EdgeInsets.only(bottom: 3),
                          ),
                          SvgPicture.asset('assets/vectors/vector_12_x2.svg', width: 14, height: 8),
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
    );
  }
}
