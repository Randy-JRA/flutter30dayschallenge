import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/client/views/day%201/day1.dart';
import 'package:flutter30dayschallenge/client/views/day2/bottomNavigationbar.dart';
import 'package:flutter30dayschallenge/client/views/day3/day3.dart';

import 'package:sizer/sizer.dart';

class SidenavView extends StatefulWidget {
  const SidenavView({super.key});

  @override
  State<SidenavView> createState() => _SidenavViewState();
}

class _SidenavViewState extends State<SidenavView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: ListView(
          children: [
            ListTile(
              leading: SizedBox(
                height: 5.h,
                width: 5.h,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              title: Text(
                'Randy Ankiambom',
              ),
              subtitle: Text(
                'jamrandyankiambom@gmail.com',
              ),
              onTap: () {},
            ),
            Divider(color: Colors.blue),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daily Challenge',
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    leading: Icon(Icons.task),
                    title: Text(
                      'Day 1',
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Day1View(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    leading: Icon(Icons.task),
                    title: Text(
                      'Day 2',
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavBarView(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    leading: Icon(Icons.task),
                    title: Text(
                      'Day 3',
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Day3View(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    leading: Icon(Icons.task),
                    title: Text(
                      'Day 4',
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Day1View(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    leading: Icon(Icons.task),
                    title: Text(
                      'Day 5',
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Day1View(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
