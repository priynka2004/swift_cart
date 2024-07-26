import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("About Us"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Introduction:",
                style: TextStyle(fontSize: 22),
              ),
              const Text(
                  "This newest addition to this on-demond segment is\na milk delivery mobile app that enables the users\nto get milk and other dairy products right at their\ndoorstep. This Milk delivery App system assists the\nowner to manage the whole system that may\ninclude customer management, billing, product\nmanagement and get the full record through the\nadmin dashboard. Milk production and distribution is\na long and lenghty process. We have made it simple\nfor everyone. We have analyzed every step from\nproduction to delivery, and then we have developed\nour unique app solutions milk delivery app with\ncreative UI/UX. "),
              const Text(
                "Subscription Model:",
                style: TextStyle(fontSize: 22),
              ),
              const Text(
                  "Different types of monthly subscriptions, such as\nsubscription for those who only need milk, and a\nseparate one for those who order a variety of milk\nproducts, is a great feature. This will enable the\ncustomers to set a recurring order while they sit back\nand enjoy the convenience."),
              const Text(
                "Customer App Features:",
                style: TextStyle(fontSize: 22),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  const Text(
                      "Easy to Sign up & Sign in with Mobile Number\nVerification"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  const Text("Sign in with Mobile number/Email"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  const Text(
                      "App Home screen product and category \nmanaged by admin"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  const Text(
                      "Product Details with Image and Products \nDescription"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  const Text("Easy to Add to cart and Orders"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  const Text(
                      "User friendly Payment Gateway(Pickup \nMyself, Cash on Delivey(COD),PayPal,\n Razorpay)"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  const Text("Instant Notification for Any Seasonal Offer"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  const Text("User can proceed Multiple Normal order"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  const Text("User can proceed Multiple Subscription order"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
