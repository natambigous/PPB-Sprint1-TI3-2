import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubes_ppb/utils/routes.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF2FFF5),
        ),
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 31),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                'About',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xFF363636),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.1, vertical: 36),
              child: Text(
                'Aplikasi pengelolaan limbah menggunakan teknologi pengenalan gambar dan pembelajaran mesin untuk mengklasifikasikan jenis limbah dari gambar pengguna. Tujuan aplikasi ini adalah meningkatkan kesadaran masyarakat tentang pengelolaan limbah yang benar dan mendukung praktik berkelanjutan.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF363636),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 6),
              width: 71,
              height: 71,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/famous_people_with_kim_jong_uns_hair_1.jpeg'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 48),
              child: Text(
                'Ketua Project',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  color: Color(0xFF363636),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 27, vertical: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMemberImage(context),
                  _buildMemberImage(context),
                  _buildMemberImage(context),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 39),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMemberText('Anggota 1'),
                  _buildMemberText('Anggota 2'),
                  _buildMemberText('Anggota 3'),
                ],
              ),
            ),
            Spacer(),
            Container(
              color: Color(0xFF4F7942),
              padding: EdgeInsets.symmetric(vertical: 19.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, rDashboard); // Navigasi ke halaman Dashboard
                    },
                    child: _buildFooterIcon('assets/vectors/vector_7_x2.svg', 26.7),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, rHome); // Navigasi ke halaman Home
                    },
                    child: _buildFooterIcon('assets/vectors/vector_14_x2.svg', 32),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, rProfile); // Navigasi ke halaman Profile
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 3),
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
                          child: SvgPicture.asset('assets/vectors/vector_4_x2.svg'),
                        ),
                      ],
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

  Widget _buildMemberImage(BuildContext context) {
    return Container(
      width: 71,
      height: 71,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35.5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/famous_people_with_kim_jong_uns_hair_1.jpeg'),
        ),
      ),
    );
  }

  Widget _buildMemberText(String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 9,
        color: Color(0xFF363636),
      ),
    );
  }

  Widget _buildFooterIcon(String asset, double size) {
    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.asset(asset),
    );
  }
}
