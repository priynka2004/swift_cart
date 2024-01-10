import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cart/models/product_model.dart';
import 'package:swift_cart/utils/app_constant.dart';


class ProductDetailsScreen extends StatefulWidget {
  ProductModel productModel;
  ProductDetailsScreen({super.key, required this.productModel});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppConstant.appTextColor),
        backgroundColor: AppConstant.appMainColor,
        title: const Text(
          "Product Details",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: Get.height / 60,
            ),
            CarouselSlider(
              items: widget.productModel.productImages
                  .map(
                    (imageUrls) =>
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: CachedNetworkImage(
                        imageUrl: imageUrls,
                        fit: BoxFit.cover,
                        width: Get.width - 10,
                        placeholder: (context, url) =>
                            const ColoredBox(
                              color: Colors.white,
                              child: Center(
                                child: CupertinoActivityIndicator(),
                              ),
                            ),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
                    ),
              )
                  .toList(),
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                aspectRatio: 2.5,
                viewportFraction: 1,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.productModel.productName,
                            ),
                            const Icon(Icons.favorite_outline)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            widget.productModel.isSale == true &&
                                widget.productModel.salePrice != ''
                                ? Text(
                              "PKR: ${widget.productModel.salePrice}",
                            )
                                : Text(
                              "PKR: ${widget.productModel.fullPrice}",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Category: ${widget.productModel.categoryName}",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.productModel.productDescription,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            child: Container(
                              width: Get.width / 3.0,
                              height: Get.height / 16,
                              decoration: BoxDecoration(
                                color: AppConstant.appScendoryColor,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: TextButton(
                                child: const Text(
                                  "WhatsApp",
                                  style: TextStyle(
                                      color: AppConstant.appTextColor),
                                ),
                                onPressed: () {
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Material(
                            child: Container(
                              width: Get.width / 3.0,
                              height: Get.height / 16,
                              decoration: BoxDecoration(
                                color: AppConstant.appScendoryColor,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: TextButton(
                                child: const Text(
                                  "Add to cart",
                                  style: TextStyle(
                                      color: AppConstant.appTextColor),
                                ),
                                onPressed: () async {
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}