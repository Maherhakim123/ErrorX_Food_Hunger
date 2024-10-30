import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
    required this.productName,
    required this.productDescription,
    required this.quantity, // Ensure this is included
  }) : super(key: key);

  final String productName;
  final String productDescription;
  final String quantity; // Ensure this is declared

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Details"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          children: [
            // Combined ListTile for product details
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
              ),
              leading: IconButton(
                icon: const Icon(Icons.bookmark_added_rounded, color: Colors.blueAccent),
                onPressed: () {},
              ),
              title: Text(
                productName,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productDescription),
                  Text("Quantity: $quantity", style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(Icons.delete, color: Colors.grey),
            ),
            // Other ListTiles remain unchanged
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
              ),
              leading: IconButton(
                icon: const Icon(Icons.shopping_bag_outlined, color: Colors.blueAccent),
                onPressed: () {},
              ),
              title: const Text(
                "Bag",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              subtitle: const Text("Brown Color Bag with straps"),
              trailing: const Icon(Icons.delete, color: Colors.grey),
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
              ),
              leading: IconButton(
                icon: const Icon(Icons.chair, color: Colors.blueAccent),
                onPressed: () {},
              ),
              title: const Text(
                "Chair",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              subtitle: const Text("Wooden swinging Chair"),
              trailing: const Icon(Icons.delete, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}