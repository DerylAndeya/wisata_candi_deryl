import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/screens/ProfileScreen.dart';
import 'package:wisata_candi/screens/SearchScreen.dart';
import 'package:wisata_candi/screens/SignInScreen.dart';
import 'package:wisata_candi/screens/detail_screen.dart';
import 'package:wisata_candi/screens/favorite_screen.dart';
import 'package:wisata_candi/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wisata candi',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        ),
        colorScheme:
        ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true,
      ),
      //home: ProfileScreen(),
      //home: DetailScreen(candi: candiList[0])
      //home: SignInScreen(),
      //home: home_screen(),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  //TODO: 1. Deklarasikan variabel
  int _currentIndex = 0;
  List<Widget> _children = [
    home_screen(),
    SearchScreen(),
    favorite_screen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //TODO: 2. buat properti body berupa widget yang di tampilkan
        body: _children[_currentIndex],
      //TODO: 3. buat properti bottomNavigationBar dengan nialai Thema
        bottomNavigationBar: Theme(
          //TODO: 4. buat data dan chid dari thema
          data: Theme.of(context).copyWith(
            canvasColor: Colors.deepPurple[50],
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.deepPurple),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.deepPurple),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite, color: Colors.deepPurple),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.deepPurple),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.deepPurple[100],
            showUnselectedLabels: true,
          ),
        ),
    );
  }
}



