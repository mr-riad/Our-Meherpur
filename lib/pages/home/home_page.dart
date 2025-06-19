import 'package:flutter/material.dart';
import 'package:our_meherpur/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Our Meherpur",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzT4hx8Rn9t_iAelfZCG8cosdaCD5iOGQjwQ&s",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.85
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 6),
                        child: Image.network(
                          "https://golawenforcement.com/wp-content/uploads/2018/08/webdeveloperjobs.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Text("Job", style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
