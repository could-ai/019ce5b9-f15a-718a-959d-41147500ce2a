import 'package:flutter/material.dart';
import 'screens/discover_screen.dart';
import 'screens/saved_screen.dart';
import 'models/destination.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Discovery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Destination> savedDestinations = [];

  void _addToSaved(Destination destination) {
    setState(() {
      if (!savedDestinations.contains(destination)) {
        savedDestinations.add(destination);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: const Text('Travel Discovery'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0.0,
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.black54,
            tabs: [
              Tab(text: 'Discover'),
              Tab(text: 'Saved Trips'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DiscoverScreen(onSave: _addToSaved),
            SavedScreen(savedDestinations: savedDestinations),
          ],
        ),
      ),
    );
  }
}