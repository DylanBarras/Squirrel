import 'package:flutter/material.dart';

class SubmissionReviewPage extends StatelessWidget {
  const SubmissionReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Submission Review')),
      body: ListView.builder(
        itemCount: 10,  // This would be dynamic based on submissions
        itemBuilder: (context, index) => ListTile(
          title: Text('Squirrel Sighting ${index + 1}'),
          subtitle: Text('Description...'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.check, color: Colors.green),
                onPressed: () {}, // Logic to approve
              ),
              IconButton(
                icon: Icon(Icons.close, color: Colors.red),
                onPressed: () {}, // Logic to reject
              ),
            ],
          ),
        ),
      ),
    );
  }
}
