import 'package:flutter/material.dart';
import 'package:Squirrel/pagesWeb/UserManagementPage.dart';
import 'package:Squirrel/pagesWeb/SubmissionReviewPage.dart';
import 'package:Squirrel/pagesWeb/ReportManagementPage.dart';
import 'package:Squirrel/components/squirrel_map.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Squirrel Spotter',
      theme: ThemeData( // Adds consistent styling — like CSS
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity, // adjusts the spacing and size of elements - makes it dynamic so it looks consistent on different screen sizes
      ),
      home: const HomePageWeb(),
    );
  }
}

class HomePageWeb extends StatefulWidget { // Made HomePage a "Stateful" widget so it can change on user interaction, and not stay the same
  const HomePageWeb({Key? key}) : super(key: key);

  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this); // tab state var init
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Squirrel Spotter'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => Navigator.pop(context),
          ),
        ],
        bottom: TabBar( // declares a tabBar 
          controller: _tabController,
          tabs: const [
            Tab(text: 'Explore'),
            Tab(text: 'Submission Review'),
            Tab(text: 'User Management'),
            Tab(text: 'Report Management'),
          ],
        ),
      ),
      body: TabBarView( // controls the tabBar
        controller: _tabController, // state variable that controls tabs
        children: [
          // basic placeholder widgets for each page
          SquirrelMap(),
          SubmissionReviewPage(), // FIXME - Make submissions into "pictures", with verification buttons below them
          UserManagementPage(), // FIXME - Load in a couple placeholder users
          ReportManagementPage(), // FIXME - Reports only show "resolve" buttons, placeholder values here too
        ],
      ),
    );
  }
}
