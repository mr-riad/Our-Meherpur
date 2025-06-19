import 'package:flutter/material.dart';

class CAppBar extends StatefulWidget {
  const CAppBar({super.key});

  @override
  State<CAppBar> createState() => _CAppBarState();
}

class _CAppBarState extends State<CAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Our Meherpur"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),)
        ],
      ),
      drawer: Drawer(
          child: Column(
            children: [

            ],
          )
      ),
    );
  }
}
