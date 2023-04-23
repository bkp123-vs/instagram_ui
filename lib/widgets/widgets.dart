import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  const Avatars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        yourscreen(),
        for (var i = 0; i < 9; i++) avatars(number: i),
      ]),
    );
  }

  Padding avatars({int? number = 0}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage(
                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sam-worthington-avatar-the-way-of-the-water-1670323169.jpg?crop=0.528xw:1.00xh;0.134xw,0&resize=640:*'),
          ),
         
          Text("Username $number"),
        ],
      ),
    );
  }
}

class yourscreen extends StatelessWidget {
  const yourscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sam-worthington-avatar-the-way-of-the-water-1670323169.jpg?crop=0.528xw:1.00xh;0.134xw,0&resize=640:*'),
              ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 12,
            child:Icon(Icons.add_circle_outline_rounded),
          ),
        ),
       
            ]),
            Text("Your Story"),
          ],
        ),
      ),
    );
  }
}
