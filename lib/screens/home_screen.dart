import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

import '../components/product_card.dart';
import '../components/product_category_chip.dart';

import '../providers/product_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _products =
        Provider.of<ProductProvider>(context, listen: false).products;
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      bottomNavigationBar: FancyBottomNavigation(
          circleColor: Colors.red,
          inactiveIconColor: Colors.grey[600],
          textColor: Color(0xFF1B284B),
          tabs: [
            TabData(iconData: Icons.home, title: 'Home'),
            TabData(iconData: Icons.shopping_bag, title: 'Shop'),
            TabData(iconData: Icons.favorite, title: 'Favorites'),
            TabData(iconData: Icons.person, title: 'Profile'),
          ],
          onTabChangedListener: (tappedTab) {}),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          top: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Best Furniture',
              style: TextStyle(
                color: Color(0xFF1B284B),
                fontFamily: 'Poppins',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Perfect Choice!',
              style: TextStyle(
                color: Color(0xFF1B284B),
                fontFamily: 'Poppins',
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 24.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Color(0xFFC7D1C9),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF1B284B),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          width: 0.0,
                          style: BorderStyle.none,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          width: 0.0,
                          style: BorderStyle.none,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 12.0,
                        bottom: 12.0,
                        left: 36.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  child: Icon(
                    Icons.swap_horiz_rounded,
                    color: Color(0xFF1B284B),
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      elevation: MaterialStateProperty.all(0.0),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(12.0),
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ))),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ProductCategoryChip(
                  category: 'All',
                  textColor: Colors.white,
                  bgColor: Color(0xFF1B284B),
                ),
                ProductCategoryChip(
                  category: 'Chair',
                  textColor: Colors.grey[700],
                  bgColor: Color(0xFFF5F5F5),
                ),
                ProductCategoryChip(
                  category: 'Table',
                  textColor: Colors.grey[700],
                  bgColor: Color(0xFFF5F5F5),
                ),
                ProductCategoryChip(
                  category: 'Lamp',
                  textColor: Colors.grey[700],
                  bgColor: Color(0xFFF5F5F5),
                ),
                ProductCategoryChip(
                  category: 'Floor',
                  textColor: Colors.grey[700],
                  bgColor: Color(0xFFF5F5F5),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _products.length,
                itemBuilder: (ctx, i) => Column(
                  children: [
                    ProductCard(
                      imageAsset: _products[i].imageUrl,
                      title: _products[i].title,
                      description: _products[i].description,
                      uploader: _products[i].uploader,
                      price: _products[i].price,
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
