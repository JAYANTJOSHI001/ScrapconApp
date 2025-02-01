import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Dashboard()),
      ),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard',
              style: Theme.of(context).textTheme.headlineMedium),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.grey,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.explore),
              icon: Icon(Icons.explore_outlined),
              label: 'Explore',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.receipt),
              icon: Icon(Icons.receipt_outlined),
              label: 'Activity',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outlined),
              label: 'Account',
            )
          ],
        ),
        body: <Widget>[
          Recents(material: 'Wood'),
          Recents(material: 'Steel'),
          Recents(material: 'E-Waste'),
          Recents(material: 'Paper')
        ][currentPageIndex]);
  }
}

class Recents extends StatelessWidget {
  final String material;
  const Recents({super.key, required this.material});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: <Widget>[
                RecentTile(
                    title: material, itemCount: 20, vendor: 'ABC Scrapers'),
                Divider(
                  color: Colors.grey,
                )
              ]);
            }));
  }
}

class RecentTile extends StatelessWidget {
  final String title;
  final int itemCount;
  final String vendor;

  const RecentTile(
      {super.key,
      required this.title,
      required this.itemCount,
      required this.vendor});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final boldText =
        theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold);
    final heading = theme.textTheme.labelLarge;
    return ListTile(
      leading: Icon(Icons.timer_outlined),
      title: Text(title, style: heading?.copyWith(fontWeight: FontWeight.bold)),
      subtitle:
          Text('To: $vendor', style: heading?.copyWith(color: Colors.grey)),
      trailing: Text('x$itemCount', style: boldText),
    );
  }
}
