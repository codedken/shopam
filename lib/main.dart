import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/product_provider.dart';

import './screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopam',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          accentColor: Colors.blue,
          fontFamily: 'Poppins',
        ),
        home: HomeScreen(),
      ),
    );
  }
}
