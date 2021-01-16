import 'package:flutter/material.dart';
import 'package:flutter_app/states/MemberProvider.dart';
import 'package:provider/provider.dart';


class MemberList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MemberProvider>(builder: (context, provider, child) {
      final List<String> entries = provider.getMemberList();
      return Expanded(
          child: ListView.builder(
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Text(
                    entries[index],
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                );
              }
          )
      );
    });
  }
}