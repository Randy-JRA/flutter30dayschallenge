import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: const Center(
          child: Text(
            'Day 2 Task Profile',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add),
          ),
        ],
      ),
      persistentFooterButtons: [
        ElevatedButton(child: Text('futter button'),onPressed: (){},),
      ],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: const UserAccountsDrawerHeader(
                  accountName: Text('Randy Ankiambom'),
                  accountEmail: Text('jamrandyankiambom@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.location_city), title: Text('My Location'), onTap: () {}),
              ListTile(
                leading: Icon(Icons.work),
                title: Text('Work'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
