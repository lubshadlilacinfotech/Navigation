import 'package:flutter/material.dart';

import 'main.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({
    super.key,
  });

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;

  var homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "Home Key");
  var accountNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: "Account Key");
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: selectedIndex,
      child: Scaffold(
        body: Builder(builder: (context) {
          switch (selectedIndex) {
            case 0:
              return Navigator(
                key: homeNavigatorKey,
                initialRoute: "/home",
                onGenerateRoute: onGenerateRoute,
              );
            case 1:
              return Navigator(
                key: accountNavigatorKey,
                initialRoute: "/account",
                onGenerateRoute: onGenerateRoute,
              );
            default:
              return Container();
          }
        }),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) => setState(() {
                  selectedIndex = value;
                }),
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Account",
                icon: Icon(Icons.account_balance),
              )
            ]),
      ),
    );
  }
}
