import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/common/sidenav.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter30dayschallenge',
        home: SidenavView(),
      );
    });
  }
}
