import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {    
    final border = OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(Radius.circular(40)),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(219, 173, 72, 1),
        elevation: 0,
        title: Text('Currency Converter',style:TextStyle(fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "INR : $result",
              style: TextStyle(fontSize: 40.2, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Your Converted Value',
              style: TextStyle(fontSize: 36.1, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                decoration: InputDecoration(
                  hintText: '   Please enter the amount in USD',
                  prefixIcon: Icon(Icons.monetization_on_rounded),
                  filled: true,
                  fillColor: Color.fromRGBO(255, 224, 156, 1),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                onPressed: () {                  
                  setState(() {
                    result = double.parse(textEditingController.text)*94.41.round();
                  });
                },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(
                    Color.fromRGBO(0, 0, 0, 1),
                  ),
                  foregroundColor: const WidgetStatePropertyAll(
                    Color.fromRGBO(232, 178, 16, 1),
                  ),
                  minimumSize: const WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  elevation: const WidgetStatePropertyAll(17.0),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(fontWeight: FontWeight(700), fontSize: 25.1),
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

