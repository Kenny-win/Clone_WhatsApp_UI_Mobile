import 'package:buttomsheet_drawer_tabbar_ex/whatsapp_pages/chat_page.dart';
import 'package:buttomsheet_drawer_tabbar_ex/whatsapp_pages/phonecall_page.dart';
import 'package:buttomsheet_drawer_tabbar_ex/whatsapp_pages/status_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: SafeArea(
        child: MyPage()
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var isChoice = -1;
  List <Widget> pages = [const ChatPage(), const StatusPage(), const PhonecallPage()];

  Widget menuItems({
      required IconData icon,
      required String text,
      Color color = Colors.white
    }){
      return ListTile(
        
        leading: Icon(icon, color: color==null? color = Colors.white: color,),
        // ignore: unnecessary_null_comparison
        title: Text(text, style: TextStyle(color: color==null? color = Colors.white: color, fontSize: 16),),
        onTap: (){},
      );
    }

  @override
  Widget build(BuildContext context) {
    List<Tab> myTabs = [
      const Tab(
        text: "對話",
      ),
      Tab(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("動態",
            style: TextStyle(
              color: isChoice == 1? Colors.green : Colors.grey
            ),),
            const SizedBox(
              width: 2,
            ),
            Container(
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                  color: isChoice == 1? Colors.green : Colors.grey, 
                  borderRadius: BorderRadius.circular(2.5)),
            )
          ],
        ),
      ),
      const Tab(
        text: "通話",
      ),
    ];


    return DefaultTabController(
        initialIndex: 0,
        length: myTabs.length,
        child: Scaffold(
          drawer: Drawer(
            elevation: 10,
            backgroundColor: const Color.fromARGB(255, 26, 27, 34),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), topRight: Radius.circular(30))
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  menuItems(icon: Icons.person_add_rounded, text: "Add Friend"),
                  menuItems(icon: Icons.group_add_rounded, text: "Add Group"),
                  menuItems(icon: Icons.meeting_room, text: "Meet Now"),
                  menuItems(icon: Icons.archive_rounded, text: "Archives"),
                  menuItems(icon: Icons.phone_callback_rounded, text: "Call"),
                  Divider(color: Colors.white,),
                  menuItems(icon: Icons.settings_applications_rounded, text: "Settings"),
                  menuItems(icon: Icons.help_center_rounded, text: "Help"),
                  menuItems(icon: Icons.info_rounded, text: "About"),
                ],
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 19, 19, 19),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 26, 27, 34),
            elevation: 0,
            title: const Text("WhatsApp"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {
                  _showBottomSheets();
                },
                icon: const Icon(Icons.more_vert_rounded),
              )
            ],
          ),
          body: Container(
            width: double.infinity,
            // color: Colors.red,
            child: Column(
              children: [
               Container(
                 color: Color.fromARGB(255, 26, 27, 34),
                 child: Row(
                   children: [
                     Center(
                       child: 
                       IconButton(
                         onPressed: (){},
                         icon: Icon(Icons.camera_alt_rounded, color: Colors.grey,),
                       ),
                     ),
                     Expanded(
                       child: TabBar(
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Color.fromARGB(255, 89, 185, 4),
                        indicatorWeight: 3,
                        onTap: (i) {
                          setState(() {
                            isChoice = i;
                          });
                          print(isChoice==1);
                        },
                         tabs: myTabs
                      )
                     ),
                   ],
                 )
               ),
               Expanded(
                 child: TabBarView(
                    children: pages,
                  )
               )
              ],
            ),
          ),
        ));
  }

  _showBottomSheets(){
    return showModalBottomSheet(
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      enableDrag: true,
      context: context, 
      builder: (context){
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              menuItems(icon: Icons.light_mode_rounded, text: "Change Theme Mode", color: Colors.black),
              menuItems(icon: Icons.exit_to_app, text: "Quit App", color: Colors.black),
            ],
          )
        );
      }
    );
  }
}
