import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glee/screens/nav.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context, // BuildContext of the current page
              MaterialPageRoute(builder: (context) => Nav()), // Defines the target page
            );
          },
        ),
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Column(
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?size=338&ext=jpg&ga=GA1.1.2113030492.1719619200&semt=ais_user',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Arjun',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          ...List.generate(
            customListTiles.length,
            (index) {
              final tile = customListTiles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.black12,
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        tile.icon,
                        color: Colors.blue,
                      ),
                    ),
                    title: Text(tile.title),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({
    required this.icon,
    required this.title,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Icons.person,
    title: 'Profile',
  ),
  CustomListTile(
    icon: Icons.favorite,
    title: 'Favorite',
  ),
  CustomListTile(
    icon: Icons.payment,
    title: 'Payment Method',
  ),
  CustomListTile(
    icon: Icons.privacy_tip,
    title: 'Privacy Policy',
  ),
  CustomListTile(
    icon: Icons.settings,
    title: 'More',
  ),
  CustomListTile(
    icon: Icons.help,
    title: 'Help',
  ),
  CustomListTile(
    title: 'Logout',
    icon: CupertinoIcons.arrow_right_arrow_left,

  ),
];
