import 'package:flutter/material.dart';

class MySliverappbar extends StatelessWidget {
  const MySliverappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating:
                  true, // scroll করে নিচে চলে আসার পর উপরে টান দিলে সাথে সাথে appBar টা চলে আসবে
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Sliver Appbar"),
                background: Image.network(
                  "https://wallpaperaccess.com/full/749928.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                  title: Text("This is Sliver AppBar"),
                  subtitle: Text("Flutter"),
                ),
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
