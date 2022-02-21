import 'package:flutter/material.dart';

class BurgerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BurgerMenu(),
      body: Center(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
