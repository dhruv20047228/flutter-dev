import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AppDrawer'), backgroundColor: Colors.purple),
      drawer: Drawer(
        child: Container(
          color: Colors.purple.shade200,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            'https://wallpapers.com/images/featured/jethalal-0y376pi53ovn8gdb.jpg',
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dhruv Patel', style: TextStyle(fontSize: 18)),
                            Text('Artificial Intelligence'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(leading: Icon(Icons.folder), title: Text('My Files')),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Share with me'),
              ),
              ListTile(leading: Icon(Icons.star), title: Text('Starred')),
              ListTile(leading: Icon(Icons.delete), title: Text('Trash')),
              ListTile(leading: Icon(Icons.upload), title: Text('Uploads')),
            ],
          ),
        ),
      ),
      body: Center(child: Text('DIshu didi gadhedi')),
    );
  }
}
