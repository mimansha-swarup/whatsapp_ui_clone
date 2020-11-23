import 'package:flutter/material.dart';
import 'package:whatsappui_clone/extras/extras.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data.names.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [

            ListTile(
              leading: CircleAvatar(

                backgroundImage: NetworkImage(
                    "https://www.ppmp.com.au/img/webimages/person.jpg"),
              ),
              trailing: IconButton(icon: Data.video[index]?Icon(Icons.call,color: MyColors.teal,):Icon(Icons.videocam_rounded,color: MyColors.teal,),onPressed: ()=>print("calling ") ,),
              title: Text(
                Data.names[index],
                style: MyTextStyle.contactName,
              ),
              subtitle:callTime(Data.time[index], Data.call[index]),
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
  callTime(String time, bool call){
    return Row(

      children: [
        call ? Icon(Icons.call_made,color: Colors.green,size: 15,): Icon(Icons.call_received,color: Colors.red,size: 15,),
        SizedBox(width: 5,),
        Text(
          time,
          style: MyTextStyle.msg,
        )

      ],
    );
  }
}
