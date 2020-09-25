

import 'package:aunty_rafiki/models/baby.dart';
import 'package:aunty_rafiki/providers/baby_bump_provider.dart';
import 'package:aunty_rafiki/views/screens/appointment_screen.dart';
import 'package:aunty_rafiki/views/screens/baby_bump_screen.dart';
import 'package:aunty_rafiki/views/screens/profile_screen.dart';
import 'package:aunty_rafiki/views/screens/tracker_screen.dart';
import 'package:aunty_rafiki/views/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  String _title = 'Tracker';

  /// Select current tab

  _selectTab(int index) {
    setState(() {
      _currentIndex = index;

      switch (index) {
        case 0:
          _title = 'Tracker';
          break;
        case 1:
          _title = 'Chats';
          break;
        case 2:
          _title = 'Baby bump';
          break;
        case 3:
          _title = 'Appointment';
          break;
        case 4:
          _title = 'Profile';
          break;

        default:
      }
    });
  }

  List<Widget> _screens = [
    TrackerScreen(),
    ChatScreen(),
    BabyBumpScreen(),
    AppointmentScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final babyBumpProvider=Provider.of<BabyBumpProvider>(context);
    var appBar2 = AppBar(
        
        title: Text(_title),
         bottom: _currentIndex ==2?TabBar(
           onTap: (int index){babyBumpProvider.setTabIndex(index);},
           isScrollable : true,
           tabs: babyModel.map((e) => Tab(icon: Text(e.id.toString()),text:'MONTH' ,)).toList(),):null,

      );
    return DefaultTabController(
            length: babyModel.length,
          child: Scaffold(
        appBar: appBar2,
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.track_changes,
                ),
                title: Text('Tracker'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                ),
                title: Text('Chat'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.photo_size_select_actual,
                ),
                title: Text('Baby Bump'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.business,
                ),
                title: Text('Appointments'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                title: Text('Profile'),
              )
            ],
            onTap: _selectTab),
      ),
    );
  }
}
