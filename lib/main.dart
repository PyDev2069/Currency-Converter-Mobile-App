import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main(){
   runApp(const MyApp());
}

//* types of widgets -- stateless, stateful, inherited(will do inherited later)


//* material design (made by google) (now focusing on this)

//* cupertino design (made by apple)
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}