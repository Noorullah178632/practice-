import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hint: Text("search data"),
              ),
            ),
          ),
          ListTile(
            title: Text("No title "),
            subtitle: Text("Hello"),
            trailing: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text("Edit")),

                PopupMenuItem(value: 2, child: Text("Delete")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
