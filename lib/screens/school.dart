import 'package:flutter/material.dart';
import 'package:school/screens/calender.dart';
import 'package:school/screens/homePage.dart';
import 'package:school/utils/colors.dart';

class mgtScreen extends StatefulWidget {
  const mgtScreen({super.key});

  @override
  State<mgtScreen> createState() => _mgtScreenState();
}

class _mgtScreenState extends State<mgtScreen> {
  int selectedIndex = 0;
  final List pages = [
    Homepage(),
    Scaffold(),
    Scaffold(),
    Calender(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kbackground,
        elevation: 0,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "",
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
