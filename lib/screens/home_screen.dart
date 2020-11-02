import '../widgets/bottom_items.dart';
import '../widgets/products.dart';
import '../widgets/items.dart';
import '../widgets/app_bar.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  var selectOption;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:[
              AppBarContainer(),
              ProductsWidget(),
              ItemsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomItems(_selectedIndex),
    );
  }
}
