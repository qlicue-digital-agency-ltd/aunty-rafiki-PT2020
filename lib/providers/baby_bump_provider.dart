import "package:flutter/material.dart";

class BabyBumpProvider extends ChangeNotifier{
  int _tabIndex=1;
  int get tabIndex{
    return _tabIndex;
  }

  void setTabIndex(int index){
    _tabIndex=index+1;
    notifyListeners();
  }
  
}