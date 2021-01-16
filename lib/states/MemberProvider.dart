import 'package:flutter/material.dart';

// inherent ChangeNotifier class for the purpose of view model
class MemberProvider extends ChangeNotifier{
  var memberList = <String>['KoKim', 'KoMu', 'KoShine'];

  void addMember ({String member}) {
    memberList.add(member);
    notifyListeners();
  }

  void clearMembers () {
    memberList.clear();
    notifyListeners();
  }

  List<String> getMemberList () {
    // notifyListeners();
    return memberList;
  }
}