import 'package:flutter/material.dart';

class SubmissionReviewPage extends StatefulWidget {
  const SubmissionReviewPage({Key? key}) : super(key: key);

  @override
  _SubmissionReviewPageState createState() => _SubmissionReviewPageState();
}

class _SubmissionReviewPageState extends State<SubmissionReviewPage> {
  // This list simulates dynamic content which can later be fetched from an API
  List<int> items = List.generate(7, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submission Review'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( // Creates simple grid with fixed number of tiles
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10, // Horizontal space between items
          mainAxisSpacing: 10, // Vertical space between items
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    '/Users/adolfo/Desktop/Squirrel-1/assets/squirrel${index+1}.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.check, color: Colors.green),
                      onPressed: () => _handleApproval(index),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.red),
                      onPressed: () => _handleRejection(index),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _handleApproval(int index) {
    // Logic to handle approval
    setState(() {
      items.removeAt(index); // Remove the item from the list
    });
  }

  void _handleRejection(int index) {
    // Logic to handle rejection
    setState(() {
      items.removeAt(index); // Remove the item from the list
    });
  }
}