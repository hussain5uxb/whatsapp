import 'package:flutter/material.dart';
import 'package:whatsapp/form.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/models/chat_model.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {

    return new ListView.builder(

      itemCount: chatData.length,
      itemBuilder: (context, i) => new Column(
          children: <Widget>[
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new AssetImage(chatData[i].imgPath), 
                ),
                  title: new Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 10),
                      child: Text(chatData[i].name,
                      style:  new TextStyle(fontWeight: FontWeight.bold ),
                      ),
                      ),
                      new  Text(
                        chatData[i].time,style: TextStyle(color: Colors.grey,fontSize: 14.0),
                      ),
                      
                    
                    ],
                  ),
                  subtitle: new Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 10),
                    child: new Column(children: [
                      Text(
                        chatData[i].message,style: TextStyle(color: Colors.grey,fontSize: 15.0)
                      ),
                      SizedBox(height: 20,),
                      Container(height: 0.2,color: Colors.grey[900] ),
                    ],),
                  ),


              ),

          ],

      ),
    );
  }
}