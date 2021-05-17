import 'package:flutter/material.dart';
import 'package:alvarez/paginas_tabs/paginatb1.dart';
import 'package:alvarez/paginas_tabs/paginatb2.dart';
import 'package:alvarez/paginas_tabs/paginatb3.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Using Tabs",
      debugShowCheckedModeBanner: false,
      // Home
      home: MiCasa()));
}

class MiCasa extends StatefulWidget {
  @override
  MiCasaState createState() => MiCasaState();
}

class MiCasaState extends State<MiCasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  } //fin estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  } //Fin de dispose

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        title: Text("Using Bottom Navigation Bar"),
        backgroundColor: Colors.purple[700],
      ), //Fin AppBar
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          FirstTab(),
          SecondTab(),
          ThirdTab()
        ],
        // set the controller
        controller: controller,
      ), //Fin TabBarView
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.purple[700],
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.camera),
            ),
            Tab(
              icon: Icon(Icons.view_agenda),
            ),
          ],
          // setup the controller
          controller: controller,
        ), //Fin tabBar
      ), //Fin de material
    ); //Scaffold
  } //Fin widget build
} //MicasaState
