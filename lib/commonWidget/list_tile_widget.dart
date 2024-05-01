import 'package:first_app/screen/output_screen.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final int index;
  final String image;
  const ListTileWidget({required this.image, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(image)),
      title: Text("Biraj $index "),
      subtitle: const Text('call someone'),
      trailing: const Wrap(spacing: 8, children: [
        // Icon(Icons.delete),
        Icon(Icons.shopping_bag),
        Icon(Icons.delete)
      ]),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return OutputScreen(title: '$index');
        }));
      },
    );
  }
}
