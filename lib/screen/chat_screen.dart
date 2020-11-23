import 'package:flutter/material.dart';
import 'package:whatsappui_clone/extras/extras.dart';
import 'package:whatsappui_clone/screen/screens.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data.names.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => personalChat(
                              name: Data.names[index],
                              text: Data.msg[index],
                            )));
              },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.ppmp.com.au/img/webimages/person.jpg"),
              ),
              trailing: Text(
                Data.time[index],
                style: MyTextStyle.time,
              ),
              title: Text(
                Data.names[index],
                style: MyTextStyle.contactName,
              ),
              subtitle: Text(
                Data.msg[index],
                style: MyTextStyle.msg,
              ),
//            is
//            ThreeLine: true,
            ),
            Divider(
              thickness: 0.5,
              height: 1.0,
              indent: 75,
            ),
          ],
        );
      },
    );
  }
}
