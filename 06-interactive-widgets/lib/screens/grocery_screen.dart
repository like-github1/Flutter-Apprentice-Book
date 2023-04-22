import 'package:flutter/material.dart';
import 'package:fooderlich/screens/empty_grocery_screen.dart';
import 'package:provider/provider.dart';

import '../models/grocery_item_screen.dart';
import '../models/models.dart';
import '../models/models.dart';
import 'grocery_list_screen.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // if  you want to Create a GroceryItem
      // for the First time you can press Floating Action Buttin
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Manager = Provider.of<GroceryManager>(context, listen: false);
          
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return GroceryItemScreen(
              onCreate: (Item) {
                    // 2
                Manager.AddGroceryItems(Item);
                 Navigator.pop(context);
              },
            );
          }));
         
        },
        child: Icon(Icons.add),
      ),
      body: BuildScreen(),
    );
  }

  Widget BuildScreen() {
    return Consumer<GroceryManager>(builder: (context, GroceryManager, child) {
      if (GroceryManager.groceryItems.isNotEmpty) {
        return  GroceryListScreen(manager: GroceryManager,);
      } else {
        return EmptyGroceryScreen();
      }
    });
  }
  
}
