import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'color_constant.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Address',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const Card(
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Row(children: [
                  Icon(Icons.home),
                  Text(
                    'Home',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('dddd,1,2,Basement Opera Business'
                        ' Hub,Lajamni\nChowk near Savaji Karat '
                        'bridge,Maruti Dham\nSocity,Mota Varachha, '),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'xxx-1234567890',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Spacer(),
          Container(
            height: 40,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: ColorConst().greenAccent200Customer ?? Colors.transparent,
                width: 1,
              ),
              color: ColorConst().greenAccent100Customer = Colors.greenAccent[100],
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Add New Adders',
                style: TextStyle(
                  color: ColorConst().greenAccent200Customer ?? Colors.transparent,
                ),
              ),
            ),
          ),
const SizedBox(height: 12,)
        ],
      ),
    );
  }
}
