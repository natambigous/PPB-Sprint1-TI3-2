import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubes_ppb/utils/routes.dart';

class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF2FFF5),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF73CAA0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/rectangle_1.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 360,
                  height: 640,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 47),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, rResult); // Navigasi ke halaman Result
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 521, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF4F7942),
                          borderRadius: BorderRadius.circular(212),
                        ),
                        child: Container(
                          width: 72,
                          height: 72,
                          padding: EdgeInsets.fromLTRB(20, 21.6, 20, 21.6),
                          child: SizedBox(
                            width: 32,
                            height: 28.8,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_5_x2.svg',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Action untuk tombol di pojok kanan atas
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 514),
                      child: SizedBox(
                        width: 79,
                        height: 79,
                        child: SvgPicture.asset(
                          'assets/vectors/bold_video_audio_sound_camera_x2.svg',
                        ),
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
