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

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  custom_tile(Icon icon,String text)
  {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 20,
        ),
        Text(text,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 65, left: 25),
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
          Text('ananya123@gmail.com',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18
            ),
          ),
          SizedBox(
            height: 60,
          ),
          custom_tile(Icon(Icons.folder), 'My Files'),
          SizedBox(
            height: 30,
          ),
          custom_tile(Icon(Icons.people), 'Shared with me'),
          SizedBox(
            height: 30,
          ),
          custom_tile(Icon(Icons.star), 'Starred'),
          SizedBox(
            height: 30,
          ),
          custom_tile(Icon(Icons.watch_later_outlined), 'Recent'),
          SizedBox(
            height: 30,
          ),
          custom_tile(Icon(Icons.offline_pin), 'Offline'),
          SizedBox(
            height: 30,
          ),
          custom_tile(Icon(Icons.upload), 'Uploads'),
          SizedBox(
            height: 30,
          ),
          custom_tile(Icon(Icons.backup), 'Backups'),
          SizedBox(
            height: 30,
          ),
          custom_tile(Icon(Icons.delete), 'Trash'),
          SizedBox(
            height: 60,
          ),
          custom_tile(Icon(Icons.settings), 'Settings & account'),
        ],
      ),
    );
  }
}
