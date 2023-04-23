import 'package:flutter/material.dart';

import '../widgets/mycards.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar(),
      body: Container(
        child: ListView(
          children: [
            Avatars(),
            for(var i =0; i<6;i++) MyCard(),
      
          ],
        ),
      ),
    );
  }

  AppBar topbar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.add_box_outlined, color: Colors.black),
      ),
      title: Text(
        "Instagram",
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chat_bubble_outline,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}




