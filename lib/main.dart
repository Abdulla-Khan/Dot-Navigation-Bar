import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List list = ['Home', 'Favourite', 'Search', 'Profile'];
  int index = 0;
  var images = [
    'https://cdn.pixabay.com/photo/2022/07/11/08/44/tower-7314495_640.jpg',
    'https://cdn.pixabay.com/photo/2022/12/30/12/39/flowers-7686890_640.jpg',
    'https://cdn.pixabay.com/photo/2023/01/12/15/05/flamingo-7714344__340.jpg',
    'https://cdn.pixabay.com/photo/2023/01/08/13/28/demoiselle-crane-7705173__340.jpg',
    'https://cdn.pixabay.com/photo/2023/01/12/15/05/flamingo-7714344__340.jpg',
    'https://cdn.pixabay.com/photo/2023/01/08/13/28/demoiselle-crane-7705173__340.jpg',
  ];
  void _handleIndexChanged(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.network(
          images[index],
          fit: BoxFit.cover,
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: index,
        dotIndicatorColor: Colors.red,
        unselectedItemColor: Colors.grey[300],
        onTap: _handleIndexChanged,
        items: [
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
            selectedColor: const Color(0xff73544C),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.favorite),
            selectedColor: const Color(0xff73544C),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.search),
            selectedColor: const Color(0xff73544C),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.person),
            selectedColor: const Color(0xff73544C),
          ),
        ],
      ),
    );
  }
}
