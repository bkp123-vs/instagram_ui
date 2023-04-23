import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        cardHeader(),
        cardImage(),
        cardsIcons(),
        Container(
           padding:EdgeInsets.only(left: 8,right: 9,bottom:5),
           width:double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "89 Likes",
                style:TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sam-worthington-avatar-the-way-of-the-water-1670323169.jpg?crop=0.528xw:1.00xh;0.134xw,0&resize=640:*'),
                      ),
                      Text(
                        "UserName",
                      ),
                    Text("This is the Demo App Description etc."),
                  ],
                ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}

class cardsIcons extends StatelessWidget {
  const cardsIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
         IconButton(onPressed: (){}, 
        icon: Icon(Icons.favorite_border_outlined)),
      IconButton(onPressed: (){}, 
        icon: Icon(Icons.chat_bubble_outline)),
      IconButton(onPressed: (){}, 
        icon: Icon(Icons.send_outlined)),
      Spacer(),
      IconButton(onPressed: (){}, 
        icon: Icon(Icons.message_sharp)),  
        ],
      ),
    );
  }
}

class cardImage extends StatelessWidget {
  const cardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network('https://cdn.pixabay.com/photo/2023/04/06/01/26/heart-7902540_960_720.jpg'),
    );
  }
}

class cardHeader extends StatelessWidget {
  const cardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(5.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sam-worthington-avatar-the-way-of-the-water-1670323169.jpg?crop=0.528xw:1.00xh;0.134xw,0&resize=640:*'),
          ),
          Text('Username'),
          Spacer(),
          IconButton(onPressed: (){}, 
        icon: Icon(Icons.message_sharp)),  
        ],
    
      )
    );
  }
}