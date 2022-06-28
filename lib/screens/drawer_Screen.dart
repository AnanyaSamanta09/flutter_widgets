import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Screen'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      body: Center(
        child: Text('This a Drawer Screen'),
      ),
    );
  }
}

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  int selected_index=-1;
  custom_tile(Icon icon,String text,int index)
  {
    return InkWell(
      onTap: () {
        setState((){
          selected_index=index;
        });
      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: 60,
        color: selected_index==index? Colors.blue.shade100:Colors.transparent,
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 20,
            ),
            Text(text,
              style: TextStyle(
                  fontSize: 18,
                  color: selected_index==index?Colors.blue:Colors.black,
                  fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ),
    );
  }
  String email='ananya123@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 65, left: 25,right: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/AR.jfif'),
              radius: 40,
            ),
            SizedBox(
              height: 15,
            ),
            Text('Ananya Rawat',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 22
                ),
            ),
            DropdownButtonFormField<String>(
              // value: dropdownValue,
              value: email,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                isCollapsed: true,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none
              ),
              icon: Icon(Icons.arrow_drop_down,color: Colors.black),
              onChanged: (newValue) {
                setState(() {
                  email=newValue!;
                });
              },
              items: <String>[
                'ananya123@gmail.com','ananya456@gmail.com','ananya1287@gmail.com'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(
              height: 60,
            ),
           //NOTE: color: selected_index==0 ? Colors.blue: Colors.black //this is used to convert the color of selected index or icon to blue & rest all to black
            custom_tile(Icon(Icons.folder,color: selected_index==0 ? Colors.blue: Colors.black), 'My Files',0),

            custom_tile(Icon(Icons.people,color: selected_index==1 ? Colors.blue: Colors.black), 'Shared with me',1),

            custom_tile(Icon(Icons.star,color: selected_index==2 ? Colors.blue: Colors.black), 'Starred',2),

            custom_tile(Icon(Icons.watch_later_outlined,color: selected_index==3 ? Colors.blue: Colors.black), 'Recent',3),

            custom_tile(Icon(Icons.offline_pin,color: selected_index==4 ? Colors.blue: Colors.black), 'Offline',4),

            custom_tile(Icon(Icons.upload,color: selected_index==5 ? Colors.blue: Colors.black), 'Uploads',5),

            custom_tile(Icon(Icons.backup,color: selected_index==6 ? Colors.blue: Colors.black), 'Backups',6),

            custom_tile(Icon(Icons.delete,color: selected_index==7 ? Colors.blue: Colors.black), 'Trash',7),

            custom_tile(Icon(Icons.settings,color: selected_index==8 ? Colors.blue: Colors.black), 'Settings & account',8),
          ],
        ),
      ),
    );
  }
}
