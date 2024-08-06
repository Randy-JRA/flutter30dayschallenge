// day3_view.dart
import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/client/views/day3/animal_data.dart';
import 'package:flutter30dayschallenge/client/views/day3/animal_view.dart';
import 'package:sizer/sizer.dart';

class Day3View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: const Center(
          child: Text(
            'Day 3 Task',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
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
                  "Make a Listview that displays a list of pets Add details such that when each pet is tapped it takes the user to a screen where pet details can be found",
                ),
                Divider(
                  thickness: 1.h,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: animal_details.length,
                      itemBuilder: (context, index) {
                        final animal = animal_details[index];
                        return ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          selectedTileColor: Colors.blue,
                          leading: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                            height: 3.h,
                            width: 3.h,
                            child: Image.asset(
                              animal['animal_picture'] ?? '',
                              width: 3.w,
                              height: 3.h,
                            ),
                          ),
                          title: Text(animal['animal_name'] ?? 'Unknown'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AnimalView(
                                  animal_name:
                                      animal['animal_name'] ?? 'Unknown',
                                  animal_picture:
                                      animal['animal_picture'] ?? '',
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(height: 2.h),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
