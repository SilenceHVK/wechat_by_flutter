import 'package:flutter/material.dart';
import 'package:wechat_by_flutter/model/bottom_menu_item.dart';
import 'package:wechat_by_flutter/page/contact_list/contact_list.dart';
import 'package:wechat_by_flutter/page/find/find.dart';
import 'package:wechat_by_flutter/page/profile/profile.dart';
import 'package:wechat_by_flutter/page/wechat/wechat.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _APP();
}

class _APP extends State<App> {
  int _currentPage = 0;

  final List<BottomMenuItem> _bottomMenuItems = [
    BottomMenuItem(name: 'wechat', label: '微信', page: Wechat()),
    BottomMenuItem(name: 'contact_list', label: '通讯录', page: ContactList()),
    BottomMenuItem(name: 'find', label: '发现', page: Find()),
    BottomMenuItem(name: 'profile', label: '我', page: Profile()),
  ];

  Image _getSelectedImage(String name, int index) {
    return Image.asset(
      "images/${name}_${_currentPage == index ? "pressed" : "normal"}.png",
      width: 32.0,
      height: 28.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomMenuItems[_currentPage].page,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF46C01B),
        unselectedItemColor: const Color(0xFF999999),
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        items: _bottomMenuItems.asMap().keys.map((index) {
          final item = _bottomMenuItems[index];
          return BottomNavigationBarItem(
              icon: _getSelectedImage(item.name, index), label: item.label);
        }).toList(),
      ),
    );
  }
}
