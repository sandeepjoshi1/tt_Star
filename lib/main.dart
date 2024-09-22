import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          
          backgroundColor: Colors.red.shade700, // Changed to red
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchPage(),
                    ),
                  );
                },
              ),
            ),
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationsPage(),
                    ),
                  );
                },
              ),
            ),
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.message), // Direct Messages icon
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DirectMessagesPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Looking',
            ),
            NavigationDestination(
              icon: Icon(Icons.table_chart),
              label: 'My TT',
            ),
            NavigationDestination(
              icon: Icon(Icons.assessment),
              label: 'My Stats',
            ),
            NavigationDestination(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
          selectedIndex: _currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
          backgroundColor: Colors.red.shade100, // Changed to lighter red
          animationDuration: Duration(milliseconds: 1000),
        ),
        body: IndexedStack(
          index: _currentPageIndex,
          children: <Widget>[
            HomePage(),
            LookingPage(),
            MyTTPage(),
            MyStatsPage(),
            MorePage(),
          ],
        ),
      ),
    );
  }
}

// Search Page
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700, // Changed to red
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white70),
          ),
          style: TextStyle(color: Colors.white),
          autofocus: true,
        ),
      ),
      body: Center(
        child: Text('Search Results', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

// Notifications Page
class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700, // Changed to red
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('No new notifications', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

// Direct Messages Page
class DirectMessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700, // Changed to red
        title: Text('Direct Messages'),
      ),
      body: Center(
        child: Text('This is the Direct Messages Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(),
        // Row for the buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // Action for "For You" button
                },
                child: Text('For You'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // Action for "Club" button
                },
                child: Text('Club (Pro)'),
              ),
            ),
          ],
        ),
        // Center content
        Expanded(
          child: Center(
            child: Text('Home Page', style: TextStyle(fontSize: 24)),
          ),
        ),
      ],
    );
  }
}

// Looking Page
class LookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Looking Page', style: TextStyle(fontSize: 24)),
    );
  }
}

// My TT Page
class MyTTPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('My TT Page', style: TextStyle(fontSize: 24)),
    );
  }
}

// My Stats Page
class MyStatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('My Stats Page', style: TextStyle(fontSize: 24)),
    );
  }
}

// More Page
class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('More Page', style: TextStyle(fontSize: 24)),
    );
  }
}
