import 'package:flutter/material.dart';

class ReportManagementPage extends StatelessWidget {
  const ReportManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reports')),
      body: ListView.builder(
        itemCount: 3,  // Example report count
        itemBuilder: (context, index) => ListTile(
          title: Text('Report ${index + 1}'),
          subtitle: Text('Issue details...'),
          trailing: ElevatedButton(
            onPressed: () {}, // Logic to resolve or investigate
            child: Text('Resolve'),
          ),
        ),
      ),
    );
  }
}
