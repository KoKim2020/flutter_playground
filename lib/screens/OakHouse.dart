import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/states/EligiblityScreenProvider.dart';
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oak House Team"),
      ),
      body: Column(
        children: [
          MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => EligiblityScreenProvider()),
            ],
            child: MemberList(),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back!'),
          ),
        ],
      ),
    );
  }
}

class MemberList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final items = Provider.of<EligiblityScreenProvider>(context,listen: false);
    final List<String> entries = <String>['A', 'B', 'C'];

    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          }
      )
    );
  }
}
