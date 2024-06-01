import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:tubes_ppb/firebase_options.dart';

import 'package:tubes_ppb/pages/about.dart';
import 'package:tubes_ppb/pages/camera.dart';
import 'package:tubes_ppb/pages/home.dart';
import 'package:tubes_ppb/pages/dashboard.dart';
import 'package:tubes_ppb/pages/linear_arrows_action_logout.dart';
import 'package:tubes_ppb/pages/profile.dart';
import 'package:tubes_ppb/pages/result.dart';
import 'package:tubes_ppb/pages/login.dart';
import 'package:tubes_ppb/pages/register.dart';
import 'package:tubes_ppb/utils/routes.dart';
import 'bloc/register/register_cubit.dart';
import 'package:tubes_ppb/bloc/login/login_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print('Failed to initialize Firebase: $e');
    // Handle Firebase initialization error here
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
      ],
      child: MaterialApp(
        title: "EcoSmart",
        debugShowCheckedModeBanner: false,
        navigatorKey: NAV_KEY,
        onGenerateRoute: generateRoute,
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return Home();
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Something went wrong'),
              );
            } else {
              return SignIn();
            }
          },
        ),
      ),
    );
  }
}
