import 'package:bottom_nav_bar_exemplo/first_screen.dart';
import 'package:bottom_nav_bar_exemplo/second_screen.dart';
import 'package:bottom_nav_bar_exemplo/third_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Exemplo de BottomNavigationBar',
          )),
          backgroundColor: Colors.pink,
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'E-mail'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuário'),
          ],
        ),
      ),
    );
  }
}
