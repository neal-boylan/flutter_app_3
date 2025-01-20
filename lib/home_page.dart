import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_3/add_new_task.dart';
import 'package:flutter_app_3/utils.dart';
import 'package:flutter_app_3/widgets/date_selector.dart';
import 'package:flutter_app_3/widgets/task_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddNewTask(),
                ),
              );
            },
            icon: const Icon(
              CupertinoIcons.add,
            ),
          ),
          IconButton(
            onPressed: () async {
              await signOutUser();
            },
            icon: const Icon(
              CupertinoIcons.arrow_uturn_left,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const DateSelector(),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
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
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: strengthenColor(
                            const Color.fromRGBO(246, 222, 194, 1),
                            0.69,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          '10:00AM',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
