import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui_clone/extras/extras.dart';

class personalChat extends StatelessWidget {
  String name;
  String text;

  personalChat({this.name, this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.darkTeal,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.ppmp.com.au/img/webimages/person.jpg"),
          ),
        ),
        title: Align(
          alignment: Alignment.topLeft,
          child: Text(
            name,
            style: MyTextStyle.contactName,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.videocam), onPressed: () => print("video call")),
          IconButton(icon: Icon(Icons.call), onPressed: () => print("call")),
          IconButton(
              icon: Icon(Icons.more_vert), onPressed: () => print("more")),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: MyColors.grey,
        child: Column(
          children: [
            Align(
              child: chatBox(context: context,message:"Hii",boxcolor: MyColors.lightLime ),
              alignment: Alignment.topRight,
            ),
            Align(
              child: chatBox(context: context,message:text,boxcolor: Colors.white),
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    );
  }
}

Widget chatBox({BuildContext context,String message, Color boxcolor, }) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Container(
      width: MediaQuery.of(context).size.width-150,

      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
      decoration: BoxDecoration(
        color: boxcolor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              message,
              style: MyTextStyle.msg,

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "6:46 PM",
                style: MyTextStyle.time,

              ),
              Icon(
                Icons.done_all,
                color: Colors.lightBlue,
                size: 20.0,
              ),
            ],
          )
        ],
      ),
    ),
  );
}
