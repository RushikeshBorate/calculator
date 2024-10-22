import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  final double total;

  InvoicePage({required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Invoice')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Customer Invoice', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Total Amount: \$${total.toStringAsFixed(2)}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);  // Go back to the previous screen
              },
              child: Text('Back to Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
