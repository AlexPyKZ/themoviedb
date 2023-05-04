import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginWidgetHome(),
    );
  }
}

class LoginWidgetHome extends StatefulWidget {
  const LoginWidgetHome({
    super.key,
  });

  @override
  State<LoginWidgetHome> createState() => _LoginWidgetHomeState();
}

class _LoginWidgetHomeState extends State<LoginWidgetHome> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      "Главная",
      style: TextStyle(
        color: Color(0xFF002139),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      "Фильмы",
      style: TextStyle(
        color: Color(0xFF002139),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      "Сериалы",
      style: TextStyle(
        color: Color(0xFF002139),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF002139),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.person,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.lightBlueAccent,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        title: const Image(
          width: 60,
          image: AssetImage('assets/logo/movie_logo.png'),
        ),
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        backgroundColor: const Color(0xFF002139),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onSelectTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Инфо",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "Фильмы",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: "Сериалы",
          ),
        ],
      ),
    );
  }
}
