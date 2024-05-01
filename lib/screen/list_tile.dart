import 'package:first_app/commonWidget/list_tile_widget.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("List Tile"),
        ),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 1; i < 100; i++) ...{
              if (i % 2 == 0) ...{
                ListTileWidget(
                  index: i,
                  image: 'assets/images/image_1.jpg',
                )
              } else ...{
                ListTileWidget(
                  index: i,
                  image: 'assets/images/image_2.jpg',
                )
              }
            }
          ],
        ),
      ),
    );
  }
}
