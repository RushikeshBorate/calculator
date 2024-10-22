import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              child: Text('Add Customer & Calculate'),
            ),
            ElevatedButton(
              onPressed: () {
                // Logic for existing calculations (could link to another screen)
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Feature not implemented yet'),
                ));
              },
              child: Text('Existing Calculation Records'),
            ),
          ],
        ),
      ),
    );
  }
}
