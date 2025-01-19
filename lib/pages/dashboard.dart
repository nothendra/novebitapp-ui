import 'package:flutter/material.dart';
import 'package:hendras_app/components/exports.dart';
import 'package:hendras_app/pages/exports.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // controls the bottom navbar
  int _selectedIndex = 0;

  // method to update the selected navbar when tapped
  void _pageNavigator(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // page to display
  final List<Widget> _pages = [
    Homepage(),
    Favorites(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 224, 224, 224),
      bottomNavigationBar: GoogleNavigationBar(
        onTabChange: (index) => _pageNavigator(index),
        currentIndex: _selectedIndex,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 36, 36, 36),
        width: 200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // No rounded corners
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset('lib/assets/img/novebit-v2-darkm.png'),
                ),

                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 25),
                //   child: Divider(
                //     color: Colors.grey,
                //   ),
                // ),

                // // HOME BUTTON
                // GestureDetector(
                //   onTap: () {
                //     _pageNavigator(0);
                //     Navigator.of(context).pop();
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 25),
                //     child: ListTile(
                //       leading: Icon(
                //         Icons.home,
                //         color: Colors.white,
                //       ),
                //       title: Text(
                //         "Home",
                //         style: TextStyle(
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                // // PROFILE BUTTON
                // GestureDetector(
                //   onTap: () {
                //     _pageNavigator(3);
                //     Navigator.of(context).pop();
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 25),
                //     child: ListTile(
                //       leading: Icon(
                //         Icons.person,
                //         color: Colors.white,
                //       ),
                //       title: Text(
                //         "Profile",
                //         style: TextStyle(
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                // SETTINGS BUTTON
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Settings",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                // ABOUT BUTTON
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        "About",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // LOGOUT BUTTON
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(left: 25, bottom: 50),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Log-out",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
