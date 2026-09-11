import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    setState(() {
      final input = double.tryParse(textEditingController.text) ?? 0.0;
      result = input * 94.41.round();
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey6,
        middle: Text(
          'Currency Converter',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      backgroundColor: CupertinoColors.systemGrey3,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "INR : ${result != 0 ? result.toStringAsFixed(2) : 0}",
              style: TextStyle(fontSize: 40.2, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Your Converted Value',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400, color: CupertinoColors.secondaryLabel),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                placeholder: ' Please enter the amount in USD',
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Icon(CupertinoIcons.money_dollar_circle),
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey2,
                  borderRadius: BorderRadius.circular(40),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: CupertinoButton(
                onPressed: convert,
                color: const Color.fromRGBO(0, 0, 0, 1),
                borderRadius: BorderRadius.circular(8.0),
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Convert',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(232, 178, 16, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 25.1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
