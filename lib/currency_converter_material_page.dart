import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(Radius.circular(40)),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(fontSize: 40.2, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Your Converted Value',
              style: TextStyle(fontSize: 36.1, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                decoration: InputDecoration(
                  hintText: '   Please enter the amount in USD',
                  prefixIcon: Icon(Icons.monetization_on_rounded),
                  filled: true,
                  fillColor: Color.fromRGBO(255, 224, 156, 1),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(219, 173, 72, 1),
    );
  }
}
