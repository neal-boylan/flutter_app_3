import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_3/utils.dart';
import 'package:flutter_app_3/widgets/date_selector.dart';
import 'package:flutter_app_3/widgets/task_card.dart';

import 'add_new_task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<ProfileScreen>(
                  builder: (context) => ProfileScreen(
                    appBar: AppBar(
                      title: const Text('User Profile'),
                    ),
                    actions: [
                      SignedOutAction((context) {
                        Navigator.of(context).pop();
                      })
                    ],
                    // children: [
                    //   const Divider(),
                    //   Padding(
                    //     padding: const EdgeInsets.all(2),
                    //     child: AspectRatio(
                    //       aspectRatio: 1,
                    //       child: Image.asset('assets/flutterfire_300x.png'),
                    //     ),
                    //   ),
                    // ],
                  ),
                ),
              );
            },
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            const DateSelector(),
            Expanded(
              child: ListView.builder(
                itemCount: 13,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      const Expanded(
                        child: TaskCard(
                          color: Color.fromRGBO(
                            246,
                            222,
                            194,
                            1,
                          ),
                          headerText: 'My humor upsets me XD',
                          descriptionText: 'My humor not that great:(',
                          scheduledDate: '69th August, 4020',
                        ),
                      ),
                      // Container(
                      //   height: 50,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //     color: strengthenColor(
                      //       const Color.fromRGBO(246, 222, 194, 1),
                      //       0.69,
                      //     ),
                      //     shape: BoxShape.circle,
                      //   ),
                      // ),
                      // const Padding(
                      //   padding: EdgeInsets.all(12.0),
                      //   child: Text(
                      //     '10:00AM',
                      //     style: TextStyle(
                      //       fontSize: 17,
                      //     ),
                      //   ),
                      // )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewTask(),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<ProfileScreen>(
                    builder: (context) => ProfileScreen(
                      appBar: AppBar(
                        title: const Text('User Profile'),
                      ),
                      actions: [
                        SignedOutAction((context) {
                          Navigator.of(context).pop();
                        })
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
