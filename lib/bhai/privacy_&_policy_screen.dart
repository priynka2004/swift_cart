import 'package:flutter/material.dart';

class PrivacyAndPolicyScreen extends StatefulWidget {
  const PrivacyAndPolicyScreen({super.key});

  @override
  State<PrivacyAndPolicyScreen> createState() => _PrivacyAndPolicyScreenState();
}

class _PrivacyAndPolicyScreenState extends State<PrivacyAndPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy & Policy'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 180),
              child: Text(
                'Privacy Policy',
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 160),
              child: Text(
                'Last updated: May 13,2021',
                style: TextStyle(color: Colors.black38),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'This Privacy Policy describe Our polices and\nprocedures '
                'on the collection,use and disclosure\n'
                'of Your information when You the service and\n tells '
                'You about Your privacy rights and how the law\n protects you.\nWe '
                'use Your Personal data to provide and improve\n the service.By using '
                'the service,You agree to the\n collection and use of information in '
                'accordance with the Privacy Policy.This Privacy has '
                    'been created\n with the Privacy Policy.'
                'This Privacy Policy has been\ncreated with thr help of'
                    ' the Privacy Policy Generator',
                style:
                    TextStyle(color: Colors.black38, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Interpretation and Definition Interpretation',
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: Text(
                'The words of which the initial letter is capitalized\nhave meaning defined '
                'under the following\nconditions.'
                'The following definition  shall have the\nsame'
                ' meaning regards of whether they appear in\n singular or in plural. ',
                style:
                    TextStyle(color: Colors.black38, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                'Law enforcement',
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Please note that unless specifically defined in this Policy Policy, capitalized terms shall"
                    " have the meaning ascribed to them in our Terms "
                    "of Service (Terms). Please read this Privacy Policy in consonance"
                    " with our Terms of Service. Please read the terms of this Privacy "
                    "Policy carefully. By using all Services and continuing"
                    " to use our products and Services, you agree are deemed to "
                    "have accepted and consented to the collection, storage, use, "
                    "and disclosure of your Personal Information in accordance with the terms of this Privacy Policy.",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
