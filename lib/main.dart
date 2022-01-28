import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/colors.dart';
import 'package:instagramclone/login_screen.dart';
import 'package:instagramclone/responsive_layout/mobilescreenlayout.dart';
import 'package:instagramclone/responsive_layout/responsive.dart';
import 'package:instagramclone/responsive_layout/webscreenlayout.dart';
import 'package:instagramclone/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "XXX", // Your apiKey
        appId: "XXX", // Your appId
        messagingSenderId: "XXX", // Your messagingSenderId
        projectId: "XXX", // Your projectId
      ));
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      //
      // home: responsive(webscreenlayout: web_screen() ,mobilescreenlayout: mobile_screen() ,),
    home:signup_screen(),
    );

  }
}



