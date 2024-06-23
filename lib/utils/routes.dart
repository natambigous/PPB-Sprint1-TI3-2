import 'package:flutter/material.dart';
import 'package:tubes_ppb/pages/about.dart';
import 'package:tubes_ppb/pages/camera.dart';
import 'package:tubes_ppb/pages/dashboard.dart';
import 'package:tubes_ppb/pages/home.dart';
import 'package:tubes_ppb/pages/login.dart';
import 'package:tubes_ppb/pages/profile.dart';
import 'package:tubes_ppb/pages/register.dart';
import 'package:tubes_ppb/pages/result.dart';
import 'package:tubes_ppb/pages/uploadimagepage.dart'; // Tambahkan ini

MaterialPageRoute _pageRoute({required Widget body, required RouteSettings settings}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);

Route<dynamic>? generateRoute(RouteSettings settings) {
  Route<dynamic>? _route;
  final _args = settings.arguments;

  switch (settings.name) {
    case rLogin:
      _route = _pageRoute(body: SignIn(), settings: settings);
      break;
    case rRegister:
      _route = _pageRoute(body: SignUp(), settings: settings);
      break;
    case rHome:
      _route = _pageRoute(body: Home(), settings: settings);
      break;
    case rDashboard:
      _route = _pageRoute(body: Dashboard(), settings: settings);
      break;
    case rProfile:
      _route = _pageRoute(body: Profile(), settings: settings);
      break;
    case rCamera:
      _route = _pageRoute(body: Camera(), settings: settings);
      break;
    case rAbout:
      _route = _pageRoute(body: About(), settings: settings);
      break;
    case rResult:
      _route = _pageRoute(body: Result(), settings: settings);
      break;
    case rUploadImage: // Tambahkan ini
      _route = _pageRoute(body: UploadImagePage(), settings: settings);
      break;  
  }

  return _route;
}

final NAV_KEY = GlobalKey<NavigatorState>();

const String rLogin = '/login';
const String rRegister = '/register';
const String rHome = '/home';
const String rDashboard = '/dashboard';
const String rProfile = '/profile';
const String rCamera = '/camera';
const String rAbout = '/about';
const String rResult = '/result';
const String rUploadImage = '/upload_image'; // Tambahkan ini