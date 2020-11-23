import 'package:flutter/material.dart';
import 'package:whatsappui_clone/extras/extras.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "My Status",
            style: MyTextStyle.contactName,
          ),
          subtitle: Text(
            "Tap to add status update",
            style: MyTextStyle.msg,
          ),
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
            "https://www.pixelstalk.net/wp-content/uploads/2016/07/HD-Black-Horse-Image.jpg"
                ),),
              Positioned(
                right: -5,
                bottom: -5,
                child: Icon(
                  Icons.add_circle_rounded,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
