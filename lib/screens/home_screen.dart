import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valentine's Day App'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[ 
            Text(
              'Happy Valentine’s Day!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 20),
            Icon(Icons.favorite, size: 100, color: Colors.red),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement music player functionality
              },
              child: Text('Play Romantic Music'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to love notes feature
              },
              child: Text('View Love Notes'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}