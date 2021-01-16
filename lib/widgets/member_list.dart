import 'package:flutter/material.dart';
import 'package:flutter_app/states/MemberProvider.dart';
import 'package:provider/provider.dart';

class MemberList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MemberProvider>(builder: (context, provider, child) {
      final List<String> members = provider.getMemberList();
      return Expanded(
        child: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, int index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      members[index],
                      style: TextStyle(fontSize: 22.0),
                    ),
                    FlatButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Text("Alert Dialog Box"),
                            content: Text("You have raised a Alert Dialog Box"),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Text("okay"),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Icon(
                        Icons.remove_red_eye_rounded,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
