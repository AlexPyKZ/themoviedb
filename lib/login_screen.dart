import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          leading: const Icon(
            Icons.menu,
            size: 30,
          ),
          title: const Image(
            image: AssetImage('assets/logo/movie_logo.png'),
          ),
        ),
        body: Container(),
      ),
    );
  }
}
