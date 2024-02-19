import 'package:flutter/material.dart';

class FavoriteItem extends StatefulWidget {
  const FavoriteItem({super.key});

  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
      ),
      body: Expanded(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  selectedItem.add(index);
                  setState(() {});
                },
                title: Text("Item " + index.toString()),
                trailing: selectedItem.contains(index)
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border_outlined),
              );
            }),
      ),
    );
  }
}
