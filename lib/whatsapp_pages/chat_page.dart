import 'package:buttomsheet_drawer_tabbar_ex/whatsapp_data/chat_data.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: chatDatas.map<Widget>((item) => 
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(item['imgProfile']),
                  fit: BoxFit.cover,
                )
              ),
            ),
            title: Text(item['name'], style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
            subtitle: Text(item['chat'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey),),
            trailing: Text(item['time'],style: const TextStyle(color: Colors.grey),),
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Hallo, my name is ${item['name']}", textAlign: TextAlign.center,),
                backgroundColor: Colors.pink,
                duration: const Duration(seconds: 1),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
              ));
            },
          )
        ).toList(),
      ),
    );
  }
}