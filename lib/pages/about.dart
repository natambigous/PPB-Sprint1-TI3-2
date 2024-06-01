import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF2FFF5),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 31, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                'Abstrak',
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xFF363636),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(33.1, 0, 24.1, 36),
              child: Text(
                'Aplikasi pengelolaan limbah menggunakan teknologi pengenalan gambar dan pembelajaran mesin untuk mengklasifikasikan jenis limbah dari gambar pengguna. Tujuan aplikasi ini adalah meningkatkan kesadaran masyarakat tentang pengelolaan limbah yang benar dan mendukung praktik berkelanjutan.',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF363636),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 3, 6),
              width: 71,
              height: 71,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.5),
              ),
              child: Positioned(
                right: -1.3,
                bottom: -15.3,
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
                    width: 72.3,
                    height: 86.3,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 48),
              child: Text(
                'Ketua Project',
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  color: Color(0xFF363636),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(27, 0, 30, 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 45, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.5),
                      ),
                      child: Positioned(
                        right: -1.3,
                        bottom: -15.3,
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
                            width: 72.3,
                            height: 86.3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 45, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.5),
                      ),
                      child: Positioned(
                        right: -1.3,
                        bottom: -15.3,
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
                            width: 72.3,
                            height: 86.3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.5),
                      ),
                      child: Positioned(
                        right: -1.3,
                        bottom: -15.3,
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
                            width: 72.3,
                            height: 86.3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1.2, 0, 0, 39),
              child: SizedBox(
                width: 279.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Anggota 1',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 9,
                          color: Color(0xFF363636),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Anggota 2',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 9,
                          color: Color(0xFF363636),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Anggota 3',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 9,
                          color: Color(0xFF363636),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 1.1, 0, 1.1),
                      width: 26.7,
                      height: 26.7,
                      child: SizedBox(
                        width: 26.7,
                        height: 26.7,
                        child: SvgPicture.asset(
                          'assets/vectors/vector_7_x2.svg',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                      height: 28.8,
                      child: SvgPicture.asset(
                        'assets/vectors/vector_14_x2.svg',
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
                                'assets/vectors/vector_4_x2.svg',
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
    );
  }
}