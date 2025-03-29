import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});
  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    print("rebuilt");
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        // color: Colors.black,
        width: 2,
        strokeAlign: BorderSide.strokeAlignInside,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'Rs $result',
              style: TextStyle(
                fontSize: 43,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.all(23),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Enter amount in usd',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on_outlined),

                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(23),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 280.25;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: (Colors.black),
                  foregroundColor: (Colors.white),
                  minimumSize: Size(double.infinity, 50),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),

                child: Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
