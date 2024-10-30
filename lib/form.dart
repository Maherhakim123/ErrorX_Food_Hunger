import 'package:flutter/material.dart';
import 'details.dart'; // Corrected import

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  final _quantityController = TextEditingController(); // Added quantity controller

  @override
  void dispose() {
    _productController.dispose();
    _productDesController.dispose();
    _quantityController.dispose(); // Dispose of the quantity controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _productController,
              fieldName: "Product Name",
              myIcon: Icons.account_balance,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _productDesController,
              fieldName: "Product Description",
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _quantityController, // Added quantity text field
              fieldName: "Quantity",
              myIcon: Icons.format_list_numbered,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              productName: _productController.text,
              productDescription: _productDesController.text,
              quantity: _quantityController.text, // Pass quantity to Details
            );
          }),
        );
      },
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),
        labelStyle: const TextStyle(color: Colors.orange),
      ),
    );
  }
}