import 'package:flutter/material.dart';
import 'package:flutter_app/states/MemberProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/states/EligiblityScreenProvider.dart';
import 'package:flutter_app/states/MemberProvider.dart';
import 'package:flutter_app/widgets/member_list.dart';
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oak House Team"),
      ),
      body: MemberList(),
    );
  }
}

