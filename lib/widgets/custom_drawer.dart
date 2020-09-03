import 'package:flutter/material.dart';
import 'package:flutter_social/data/data.dart';
import 'package:flutter_social/screens/home_screen.dart';
import 'package:flutter_social/screens/login_screen.dart';

class CustomDrawer extends StatelessWidget {
  _buildDrawerOption(Icon icon, String title, Function onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                height: 200,
                width: double.infinity,
                image: AssetImage(currentUser.backgroundImageUrl),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(currentUser.profileImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildDrawerOption(
              Icon(Icons.dashboard),
              'Home',
              () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()))),
          _buildDrawerOption(
              Icon(Icons.chat),
              'Chat',
              () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()))),
          _buildDrawerOption(
              Icon(Icons.location_on),
              'Map',
              () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()))),
          _buildDrawerOption(
              Icon(Icons.account_circle),
              'Your profile',
              () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()))),
          _buildDrawerOption(
              Icon(Icons.settings),
              'Settings',
              () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()))),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: _buildDrawerOption(
                  Icon(Icons.directions_run),
                  'Logout',
                  () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => LoginScreen()))),
            ),
          ),
        ],
      ),
    );
  }
}
