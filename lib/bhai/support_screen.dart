import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Support',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Address Shop Number 67 68 69 Ground Floor Apple\nWorld Shopping Centre,CA,988852',
              style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 100),
            child: Text(
              'WhatsApp or Call: +917276465975',
              style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 200,top: 8),
            child: Text(
              'Skype: cscodetech',
              style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16,top: 22),
            child: Text(
              "NOTE:THIS APP REGISTER WITH ONLY CODTECH.",
              style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
            ),
          ),
          Text("BE AWARE WITH FRAUDSTER WE DIDN'T ALLOWED",style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(right: 110),
            child: Text("ANYONE TO SELL OUR PRODUCTS",style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
