import 'package:buttomsheet_drawer_tabbar_ex/whatsapp_data/call_data.dart';
import 'package:flutter/material.dart';

class PhonecallPage extends StatelessWidget {
  const PhonecallPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: callDatas.map<Widget>((item) => 
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
            subtitle: Row(
              children: [Icon(Icons.subdirectory_arrow_left_outlined, color: Colors.red,),SizedBox(width: 2,), Text(item['time'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey),),],
            ),
            trailing: Icon(Icons.phone, color: Colors.green,)
          )
        ).toList(),
      ),
    );
  }
}