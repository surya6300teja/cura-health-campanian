import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glee/consts/theme.dart';
import 'package:glee/screens/onboarding.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:glee/screens/signup.dart';
import 'package:glee/screens/nav.dart';
import 'package:glee/screens/forgot_password.dart';

 Future<void> main() async {
  // 1. Initialize Supabase
  await Supabase.initialize(
    url: 'https://qanlmnydialtllhjrvit.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFhbmxtbnlkaWFsdGxsaGpydml0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk2ODU1ODMsImV4cCI6MjAzNTI2MTU4M30.sCckMnAjQVc9J70t3Dx05wVme33BKLCEsIEmN-zIPzw',
  );

  // 2. Ensure screen size for adaptive design (if needed)
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  // 3. Wrap MyApp with ScreenUtilInit for responsive design
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) => MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final GoRouter _router = GoRouter(
      initialLocation: '',
      routes: [

        GoRoute(
          path: '/signup',
          builder: (context, state) => Signup(),
        ),
        GoRoute(
          path: '/forgot-password',
          builder: (context, state) => ForgotPassword(),
        ),
        GoRoute(
          path: '/nav',
          builder: (context, state) => const Nav(),
        ),
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      title: 'Glee',
      home: const Onboarding(),
    );
  }
}
