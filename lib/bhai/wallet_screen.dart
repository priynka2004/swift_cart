import 'package:flutter/material.dart';

import 'color_constant.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  String amountText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Wallet',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height:  MediaQuery.of(context).size.height * 0.25,
            child: Stack(
              children: [
                // First Card
                Card(
                  child: Container(
                    height: 150,
                    width: 350,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$51795',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Current Balance',
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: -2,
                  left: 120,
                  child: Card(
                    color:
                        ColorConst().greenAccent200Customer ?? Colors.transparent,
                    child: Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Column(
                        children: [
                          Icon(Icons.account_balance_wallet_outlined,
                              color: ColorConst.btnTextColor),
                          Text('History',
                              style: TextStyle(color: ColorConst.btnTextColor)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          const Text('Amount', style: TextStyle(color: Colors.black45)),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            controller: TextEditingController(text: amountText),
            readOnly: true,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  updateAmount('\$10');
                },
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        '\$10',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  updateAmount('\$100');
                },
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '\$100',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  updateAmount('\$200');
                },
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '\$200',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  updateAmount('\$250');
                },
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '\$250',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40,),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary:  ColorConst().greenAccent200Customer ?? Colors.transparent,
                minimumSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Add Money',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void updateAmount(String value) {
    setState(() {
      amountText = value;
    });
  }
}
