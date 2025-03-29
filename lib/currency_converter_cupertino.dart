import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertino extends StatefulWidget {
  const CurrencyConverterCupertino({super.key});

  @override
  State<CurrencyConverterCupertino> createState() =>
      _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState
    extends State<CurrencyConverterCupertino> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey2,

        middle: Text(
          "Currency Converter",
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),

      backgroundColor: CupertinoColors.systemGrey2,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'Rs $result',
              style: TextStyle(
                fontSize: 43,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.all(23),
              child: CupertinoTextField(
                controller: textEditingController,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Enter amount in usd',
                prefix: Icon(CupertinoIcons.money_dollar),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(23),
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 280.25;
                  });
                },
                color: CupertinoColors.black,

                child: Text(
                  "Convert",
                  selectionColor: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
