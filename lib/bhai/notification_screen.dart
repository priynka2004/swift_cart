import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'color_constant.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String currentDate = DateFormat('MMMM dd, yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notification',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              height: 70,
              width: 350,
              child: Column(
                children: [
                  Row(children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: ColorConst().greenAccent200Customer ??
                            Colors.transparent,
                        minimumSize: const Size(150, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      child: const Text(
                        'Order Received!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 74),
                    Row(
                        children: [
                          Text(
                            currentDate,style: const TextStyle(color: Colors.black45),
                          ),
                        ]),
                  ]),
                  const SizedBox(width: 16),
                  const Text(
                    'CSCODETECH,Your Order #147 Has Been Received.',
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              height: 70,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: ColorConst().greenAccent200Customer ??
                            Colors.transparent,
                        minimumSize: const Size(150, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      child: const Text(
                        'Order Received\nReceived!!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width:74),
                    Row(
                        children: [
                          Text(
                            currentDate,style: const TextStyle(color: Colors.black45),
                          ),
                        ]),
                  ]),
                  const Text(
                    'CSCODETECH,Your Order #156 Has Been Received.',
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
