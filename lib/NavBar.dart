import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
            accountName: Text('Timo'),
            accountEmail: Text('timothy@howest.be'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                  'assets/images/profilepic.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.lightGreen[300],
            image: DecorationImage(
              image: NetworkImage(
                'https://images.pexels.com/photos/10404279/pexels-photo-10404279.jpeg?cs=srgb&dl=pexels-wendy-wei-10404279.jpg&fm=jpg',
              ),
              fit: BoxFit.cover,
            )
          ),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          iconColor: Colors.red[400],
          title: Text('Favorite'),
          onTap: () => Navigator.pushNamed(context, '/test'),
        ),
        ListTile(
          leading: Icon(Icons.camera_alt_outlined),
          title: Text('Pictures'),
          iconColor: Colors.green[400],
          onTap: () => Navigator.pushReplacementNamed(context, '/home'),
        ),
        ListTile(
          leading: Icon(Icons.supervised_user_circle),
          title: Text('Users'),
          iconColor: Colors.blue,
          onTap: () => print('Users'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.sunny_snowing),
          title: Text('Weather'),
          onTap: () => print('Weather'),
          iconColor: Colors.orangeAccent,
        ),
        ListTile(
          leading: Icon(Icons.contact_mail_outlined),
          title: Text('Models'),
          iconColor: Colors.pinkAccent,
          onTap: () => print('Models'),
        ),
      ],
    ),
    );
  }
}