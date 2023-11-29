import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green.shade200, width: 2),
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            backgroundColor: Colors.grey,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            backgroundColor: Colors.grey,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            backgroundColor: Colors.grey,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            backgroundColor: Colors.grey,
            label: '',
          ),
        ],
      ),
    );
  }
}
