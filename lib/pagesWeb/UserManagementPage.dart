import 'package:flutter/material.dart';

class UserManagementPage extends StatelessWidget {
  const UserManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('User Management'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Reported'),
              Tab(text: 'All Users'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildReportedList(context),
            _buildUserList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildReportedList(BuildContext context) {
    // This would dynamically fetch users who are reported
    return ListView(
      children: [
        ListTile(title: Text('User 1'), subtitle: Text('Report Count: 3')),
        ListTile(title: Text('User 2'), subtitle: Text('Report Count: 1')),
      ],
    );
  }

  Widget _buildUserList(BuildContext context) {
    // This would dynamically fetch all users
    return ListView(
      children: [
        ListTile(title: Text('User 3')),
        ListTile(title: Text('User 4')),
      ],
    );
  }
}
