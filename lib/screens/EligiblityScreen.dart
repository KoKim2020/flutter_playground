import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/states/EligiblityScreenProvider.dart';
import 'package:flutter_app/states/MemberProvider.dart';

import 'package:provider/provider.dart';
import 'OakHouse.dart';
import 'package:flutter_app/widgets/member_list.dart';

class EligiblityScreen extends StatelessWidget {
  final ageController = TextEditingController();
  final memberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          body:  Test(ageController: ageController, memberController: memberController),
        );
      },
    );
  }
}

class Test extends StatelessWidget {
  const Test({
    Key key,
    @required this.ageController,
    @required this.memberController,
  }) : super(key: key);

  final TextEditingController ageController;
  final TextEditingController memberController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Form(child: Consumer<MemberProvider>(
        builder: (context, provider, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MemberList(),
              TextFormField(
                controller: memberController,
                decoration:
                    InputDecoration(hintText: "Add A New Member"),
              ),

              FlatButton(
                onPressed: () {
                  if(memberController.text.isNotEmpty) {
                    provider.addMember(member: memberController.text);
                    memberController.clear();
                  }
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => SecondRoute()),
                  // );
                },
                child: Text('Add'),
                color: Colors.green,
              ),
            ],
          );
        },
      )),
    );
  }
}


