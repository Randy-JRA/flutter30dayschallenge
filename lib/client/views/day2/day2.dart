import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/client/views/day2/profile.dart';
import 'package:sizer/sizer.dart';

class Day2View extends StatefulWidget {
  const Day2View({super.key});

  @override
  State<Day2View> createState() => _Day2ViewState();
}

class _Day2ViewState extends State<Day2View> {
  String name = " ";
  String date = "Date Here";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: const Center(
          child: Text(
            'Day 2 Task',
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
      drawer: Drawer(
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
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Day2View(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileView(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Text(
              'Click the button below and go to home to see date',
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  date = DateTime.now().toString();
                });
              },
              child: Text('See Date'),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.alarm),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.work),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.phone),
        ),
      ],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Task"),
                SizedBox(
                  height: 2.h,
                ),
                const Text(
                  "Creat a Scaffold, AppBar, Floating Action Button, Drawer, Footer Buttons, Bottom Navigation, and then Add a Drawer, in the Drawer add a button, when the button is clicked it should update a Text widget on the main page with the current date and time.",
                ),
                Divider(
                  thickness: 1.h,
                ),
                SizedBox(
                  height: 2.h,
                ),
                const Text(
                    "Please Enter you name below then go to the drawer and click the button to see the output"),
                SizedBox(
                  height: 2.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text('Enter your name'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onSubmitted: (String str) {
                    setState(() {
                      name = str;
                    });
                  },
                ),
                SizedBox(
                  height: 2.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(name),
                      ),
                    );
                  },
                  child: const Text('See Result on Snack bar'),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                    'Go > drawer > click button > text in mian shows the current  date and time'),
                Row(
                  children: [
                    Text('Date Now is:   '),
                    Container(color: Colors.grey, child: Text(date)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
