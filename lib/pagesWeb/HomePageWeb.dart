import 'package:flutter/material.dart';
import 'package:Squirrel/pagesWeb/UserManagementPage.dart';
import 'package:Squirrel/pagesWeb/SubmissionReviewPage.dart';
import 'package:Squirrel/pagesWeb/ReportManagementPage.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard - Squirrel Tracker'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Review Submissions'),
            leading: Icon(Icons.check),
            onTap: () => Navigator.pushNamed(context, 'SubmissionReviewPage'),
          ),
          ListTile(
            title: Text('Manage Users'),
            leading: Icon(Icons.people),
            onTap: () => Navigator.pushNamed(context, 'UserManagementPage'),
          ),
          ListTile(
            title: Text('View Reports'),
            leading: Icon(Icons.report_problem),
            onTap: () => Navigator.pushNamed(context, 'ReportManagementPage'),
          ),
        ],
      ),
    );
  }
}
