import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyRefreshPage(),
    );
  }
}

class MyRefreshPage extends StatefulWidget {
  @override
  _MyRefreshPageState createState() => _MyRefreshPageState();
}

class _MyRefreshPageState extends State<MyRefreshPage> {
  // Flag to track whether the page is currently refreshing
  bool _isRefreshing = false;

  // Callback function to be called when the user initiates a refresh
  Future<void> _refresh() async {
    // Set the refreshing flag to true
    setState(() {
      _isRefreshing = true;
    });

    // Perform any necessary actions to refresh the page content
    await Future.delayed(Duration(seconds: 2));

    // Set the refreshing flag to false
    setState(() {
      _isRefreshing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: LiquidPullToRefresh(
          height: 220,
          backgroundColor: Colors.green,
          color: Color.fromARGB(255, 36, 97, 39),
          onRefresh: _refresh,
          child: ListView(
            children: [
              Container(
                child: Center(child: Text("Page content goes here")),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 250,
                    color: Color.fromARGB(255, 36, 97, 39),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 250,
                    color: Color.fromARGB(255, 36, 97, 39),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 250,
                    color: Color.fromARGB(255, 36, 97, 39),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
