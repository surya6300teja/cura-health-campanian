// import 'package:flutter/material.dart';
// import 'package:glee/screens/nav.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class Onboarding extends StatelessWidget {
//   const Onboarding({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final ColorScheme color = Theme.of(context).colorScheme;
//     return Scaffold(
//       backgroundColor: color.primary,
//       body: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Image.asset('assets/images/circle.png'),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               width: 450.0, // Adjust width and height to control zoom indirectly
//               height: 800.0, // Adjust width and height to control zoom indirectly
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
//                 child: Image.asset(
//                   'assets/images/WhatsApp Image 2024-06-29 at 15.34.09.jpeg',
//                   fit: BoxFit.cover, // Ensures aspect ratio is maintained
//                 ),
//               ),
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 60),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const SizedBox(
//                   height: 60,
//                 ),
//
//                 const Spacer(),
//                 SizedBox(
//                   width: 293,
//                   height: 70,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return const Nav();
//                           },
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       elevation: 0,
//                     ),
//                     child: Text(
//                       'Explore',
//                       style: TextStyle(
//                         fontSize: 25,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 60,
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:glee/screens/LoginPage.dart';
import 'package:glee/screens/signup.dart';
import 'package:glee/screens/nav.dart'; // Import the Nav screen
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // After a 3-second delay, navigate to the Nav screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  LoginPage (),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: color.primary,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.centerLeft,
             child: Image.asset('assets/images/circle.png'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 450.0, // Adjust width and height to control zoom indirectly
              height: 800.0, // Adjust width and height to control zoom indirectly
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
                child: Image.asset(
                  'assets/images/1 (5).jpg', // Replace with your image
                  fit: BoxFit.cover, // Ensures aspect ratio is maintained
                ),
              ),
            ),

          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),

                const Spacer(),
                SizedBox(
                  width: 293,
                  height: 70,

                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

