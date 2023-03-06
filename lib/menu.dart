import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
// Add a ListView to the drawer. This ensures the user can scroll
// through the options in the drawer if there isn't enough vertical
// space to fit everything.
      child: ListView(
// Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage('assets/AppImages/avatar.png'),
                        width: 90,
                        height: 90,
                      ),
                      Column(
                        children: [
                          Text(
                            "Harry Kennedy",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text("Developer"),
                        ],
                      )
                    ],
                  )
                ],
              )),
          ListTile(
            title: const Text('Leads'),
            leading: Icon(Icons.leaderboard_outlined),
            iconColor: Colors.deepOrangeAccent,
            onTap: () {
// Update the state of the app.
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Blogs'),
            leading: Icon(Icons.library_books_outlined),
            iconColor: Colors.deepOrangeAccent,
            onTap: () {
// Update the state of the app.
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Pages'),
            leading: Icon(Icons.pages_outlined),
            iconColor: Colors.deepOrangeAccent,
            onTap: () {
// Update the state of the app.
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Views'),
            leading: Icon(Icons.remove_red_eye_sharp),
            iconColor: Colors.deepOrangeAccent,
            onTap: () {
// Update the state of the app.
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
