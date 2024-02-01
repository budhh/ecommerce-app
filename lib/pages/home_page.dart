import 'package:ecommerce/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //number to track selected index to navigate bottom bar
  int selectedIndex = 0;

  //function to navigate bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => pages[index],
      //     ));
    });
  }

  // pages to navigate between
  List<Widget> pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ))),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'lib/images/nike.png',
                color: Colors.white,
              ),
            ),
            // const Divider()
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
