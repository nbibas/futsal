// import 'package:demo/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'helper.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List<Setting> settingList = [
    Setting(
        tittle: "Privacy Policy",
        icon: Icon(
          Icons.privacy_tip_outlined,
          color: Color.fromARGB(255, 5, 77, 136),
        )),
    Setting(
        tittle: "Change Password",
        icon: Icon(Icons.lock, color: Color.fromARGB(255, 6, 75, 132))),
    Setting(
        tittle: 'Add Event',
        icon: Icon(Icons.event, color: Color.fromARGB(255, 6, 75, 132))),
    Setting(
        tittle: "Add Venue",
        icon:
            Icon(Icons.place_outlined, color: Color.fromARGB(255, 6, 75, 132))),
    Setting(
        tittle: 'Logout',
        icon: Icon(Icons.logout_outlined,
            color: Color.fromARGB(255, 6, 75, 132))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          " Settings",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: settingList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: SizedBox(
                          height: 60,
                          child: Row(
                            children: [
                              settingList[index].icon!,
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  settingList[index].tittle!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: Color.fromARGB(255, 107, 103, 103),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Setting {
  String? tittle;
  Icon? icon;
  Setting({this.tittle, this.icon});
}
