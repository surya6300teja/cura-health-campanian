import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glee/screens/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glee/screens/offers.dart';
import '../widgets/faces.dart';
import '../widgets/task.dart';
import 'forum_detail.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: SvgPicture.asset(
            'assets/icons/hamburger.svg',
            color: color.onPrimary,
            width: 22,
            height: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: ClipOval(
              child: Image.asset(
                'assets/images/user.jpg',
                width: 35,
                height: 35,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Welcome to,',
                style: GoogleFonts.alegreya(
                  color: color.onPrimary,
                  fontSize: 30,
                ),
              ),
              TextSpan(
                text: ' Cura!',
                style: GoogleFonts.alegreya(
                  color: color.onPrimary,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'How are you feeling today?',
            style: TextStyle(
              color: color.onPrimary,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 101,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Faces(
                  title: 'Happy',
                  colorName: color.secondary,
                  assetName: 'assets/images/happy.png',
                ),
                Faces(
                  title: 'Calm',
                  colorName: color.primary,
                  assetName: 'assets/images/calm.png',
                ),
                Faces(
                  title: 'Relax',
                  colorName: color.onSecondary,
                  assetName: 'assets/images/relax.png',
                ),
                Faces(
                  title: 'Focus',
                  colorName: color.tertiary,
                  assetName: 'assets/images/focus.png',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Today's Task",
            style: TextStyle(
              color: color.onPrimary,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Task(
            title: 'Take a 30-Minute Walk',
            subtitle:
            'Enjoy some fresh air and boost your mood!',
            assetName: 'assets/images/meetup.png',
            backgroundColor: Colors.lightBlueAccent.shade100,
            foregroundColor: Colors.lightBlueAccent.shade400,
            textButton: 'Completed',
            iconData: Icons.play_circle_fill,
            onPressed: (){
              //await bookAppointment(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Great job! You earned 10 points'),
                ),
              );

            },
          ),
          const SizedBox(
            height: 30,
          ),
          Task(
            title: '10-Min Bodyweight Workout',
            subtitle:
            'Get your heart rate up and build strength!',
            assetName: 'assets/images/meetup.png',
            backgroundColor: Colors.lightGreen.shade50,
            foregroundColor: Colors.lightGreen.shade400,
            textButton: 'Completed',
            iconData: Icons.play_circle_fill,
            onPressed: (){
              //await bookAppointment(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Great job! You earned 10 points'),
                ),
              );

            },
          ),
          const SizedBox(
            height: 30,
          ),

          Text(
            "Explore",
            style: TextStyle(
              color: color.onPrimary,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Task(
            title: 'Peer Group Meetup',
            subtitle:
                'Let’s open up to the thing that matters among the people',
            assetName: 'assets/images/meetup.png',
            backgroundColor: Colors.redAccent.shade100,
            foregroundColor: Colors.lightBlueAccent.shade400,
            textButton: 'Join Now',
            iconData: Icons.play_circle_fill,
            onPressed: () {
              // This function will be executed when the user taps the task card
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForumDetailPage()),
              ); // Replace with your desired action (navigation, dialog, etc.)
            },
          ),
          const SizedBox(
            height: 30,
          ),
          Task(
            title: 'TeleHealthConnect',
            subtitle:
            'Real-time video consultations, and secure medical record access from home.schedule now.',
            assetName: 'assets/images/video-call (1).png',
            backgroundColor: color.onTertiary,
            foregroundColor: color.secondary,
            textButton: 'Schedule',
            iconData: Icons.access_time_filled,
            onPressed: () {
              // This function will be executed when the user taps the task card
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SpecialOffers()),
              ); // Replace with your desired action (navigation, dialog, etc.)
            },
          ),
          const SizedBox(
            height: 30,
          ),
          Task(
            title: 'Meditation',
            subtitle:
                'Aura is the most important thing that matters to you. Join us on',
            assetName: 'assets/images/meditation.png',
            backgroundColor: color.secondaryFixed,
            foregroundColor: color.onSecondary,
            textButton: '06:00 PM',
            iconData: Icons.access_time_filled,
            onPressed: () {
              // This function will be executed when the user taps the task card
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForumDetailPage()),
              ); // Replace with your desired action (navigation, dialog, etc.)
            },
          ),



        ],
      ),
    );
  }
}

