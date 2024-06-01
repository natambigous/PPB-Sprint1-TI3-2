import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubes_ppb/utils/routes.dart';

class Camera extends StatelessWidget {
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
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF73CAA0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/rectangle_1.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 47,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, rResult); // Navigasi ke halaman Result
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: size.width * 0.05, bottom: size.height * 0.02),
                      decoration: BoxDecoration(
                        color: Color(0xFF4F7942),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      width: 72,
                      height: 72,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: SvgPicture.asset(
                          'assets/vectors/vector_5_x2.svg',
                          width: 32,
                          height: 28.8,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Action untuk tombol di pojok kanan atas
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: size.width * 0.05, bottom: size.height * 0.02),
                      child: SvgPicture.asset(
                        'assets/vectors/bold_video_audio_sound_camera_x2.svg',
                        width: 79,
                        height: 79,
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
