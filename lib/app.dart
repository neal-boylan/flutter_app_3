import 'package:flutter/material.dart';

import 'auth_gate.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthGate(),
    );
  }
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Task Management',
  //     theme: ThemeData(
  //       fontFamily: 'Cera Pro',
  //       elevatedButtonTheme: ElevatedButtonThemeData(
  //         style: ElevatedButton.styleFrom(
  //           backgroundColor: Colors.black,
  //           minimumSize: const Size(double.infinity, 60),
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(15),
  //           ),
  //         ),
  //       ),
  //       inputDecorationTheme: InputDecorationTheme(
  //         contentPadding: const EdgeInsets.all(27),
  //         enabledBorder: OutlineInputBorder(
  //           borderSide: BorderSide(
  //             color: Colors.grey.shade300,
  //             width: 3,
  //           ),
  //           borderRadius: BorderRadius.circular(10),
  //         ),
  //         focusedBorder: OutlineInputBorder(
  //           borderSide: const BorderSide(
  //             // color: Pallete.gradient2,
  //             width: 3,
  //           ),
  //           borderRadius: BorderRadius.circular(10),
  //         ),
  //       ),
  //     ),
  //     home: StreamBuilder(
  //       stream: FirebaseAuth.instance.authStateChanges(),
  //       builder: (context, snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return const Center(
  //             child: CircularProgressIndicator(),
  //           );
  //         }
  //         print(snapshot.data);
  //         if (snapshot.data != null) {
  //           print("made it here");
  //           return MyHomePage();
  //         }
  //         return SignUpPage();
  //       },
  //     ),
  //   );
  // }
}
