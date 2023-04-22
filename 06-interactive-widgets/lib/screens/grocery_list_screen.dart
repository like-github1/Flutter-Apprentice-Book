import 'package:flutter/material.dart';
import 'package:fooderlich/models/grocery_item_screen.dart';

import '../models/grocery_tile.dart';
import '../models/models.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;
  const GroceryListScreen({required this.manager, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groceryItems = manager.groceryItems;
    return ListView.separated(
      itemCount: groceryItems.length,
      itemBuilder: (BuildContext context, index) {
        return Dismissible(
          // 7
          direction: DismissDirection.endToStart,
          // 8
          background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete_forever,
                  color: Colors.white, size: 50.0)),
          onDismissed: (direction) {
            manager.deleteItems(index);
            // 11
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('${groceryItems[index].name} dismissed')));
          },

          key: Key(groceryItems[index].id),
          child: InkWell(
            key: Key(groceryItems[index].id),
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return GroceryItemScreen(
                  originalItem: groceryItems[index],
                  // 3
                  onUpdate: (item) {
                    // 4
                    manager.updateItem(item, index);
                    // 5
                    Navigator.pop(context);
                  },
                );
              }));
            },
            child: GroceryTile(
              item: groceryItems[index],
              onComplete: (change) {
                manager.completeItem(index, change!);
              },
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, index) {
        return const SizedBox(height: 16.0);
      },
    );
  }
}
