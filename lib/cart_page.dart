import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<String> _items = ['Item 1', 'Item 2', 'Item 3'];
  final Map<String, double> _pricing = {
    'Customer A': 10.0,
    'Customer B': 8.5,
    'Customer C': 12.0,
  };

  String _selectedCustomer = 'Customer A';
  double _total = 0.0;

  void _calculateTotal() {
    setState(() {
      // Assume each customer has different pricing for simplicity
      double price = _pricing[_selectedCustomer] ?? 10.0;
      _total = _items.length * price; // Example calculation
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              value: _selectedCustomer,
              items: _pricing.keys.map((String customer) {
                return DropdownMenuItem<String>(
                  value: customer,
                  child: Text(customer),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedCustomer = newValue!;
                });
              },
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(_items[index]));
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateTotal,
              child: Text('Calculate Total'),
            ),
            Text('Total: $_total'),
          ],
        ),
      ),
    );
  }
}
