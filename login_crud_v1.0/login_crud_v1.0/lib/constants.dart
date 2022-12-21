import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.green[300];
var appBarColor = Colors.green[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text(''),
  centerTitle: false,
);

var drawerTextColor = TextStyle(
  color: Colors.orange[600],
);

var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.orange[600],
  elevation: 0,
  child: Column(
    children: [
      const DrawerHeader(
        child: CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage("img/sena.png"),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.house),
          title: TextButton(
            onPressed: (){},
            child: const Text(
              'INICIO',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),

      const Divider(
        height: 2,
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.logout),
          title: TextButton(
            onPressed: (){
              FirebaseAuth.instance.signOut();
            },
            child: const Text(
              'CERRAR SESIÓN',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    ],
  ),
);