import 'package:buttomsheet_drawer_tabbar_ex/whatsapp_data/chat_data.dart';
import 'package:buttomsheet_drawer_tabbar_ex/whatsapp_data/status_data.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage(chatDatas[6]['imgProfile']),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                Positioned(
                  bottom: 2,
                  left: 25,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromARGB(255, 33, 164, 38)
                    ),
                    child: const Center(
                      child: Icon(Icons.add, color: Colors.white, size: 15,)
                    ),
                  )
                )
              ],
            ),
            title: Text("我的動態", style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
            subtitle: Text("點按新增動態更新", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey),),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 15),
            child: Text("最近更新", style: TextStyle(color: Colors.grey),),
          ),
          Column(
            children: notCheckStatusDatas.map<Widget>((items)=>
              ListTile(
                leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                // color: Colors.red,
                border: Border.all(
                  color: Colors.green,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(items['imgProfile']),
                  fit: BoxFit.cover,
                )
              ),
            ),
            title: Text(items['name'], style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
            subtitle: Text(items['time'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey),),
              )
            ).toList(),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 15),
            child: Text("檢視過的動態", style: TextStyle(color: Colors.grey),),
          ),
          Column(
            children: checkedStatusDatas.map<Widget>((items)=>
              ListTile(
                leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                // color: Colors.red,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(items['imgProfile']),
                  fit: BoxFit.cover,
                )
              ),
            ),
            title: Text(items['name'], style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
            subtitle: Text(items['time'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey),),
              )
            ).toList(),
          )
        ]
      ),
    );
  }
}