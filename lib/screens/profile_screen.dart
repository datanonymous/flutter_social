import 'package:flutter/material.dart';
import 'package:flutter_social/models/user_model.dart';
import 'package:flutter_social/widgets/custom_drawer.dart';

class ProfileScreen extends StatefulWidget {
  final User user;
  ProfileScreen({this.user});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final GlobalKey<ScaffoldState>_scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.user.backgroundImageUrl),
                ),
                Positioned(
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    iconSize: 30,
                    color: Theme.of(context).primaryColor,
                    onPressed: ()=>_scaffoldKey.currentState.openDrawer(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
